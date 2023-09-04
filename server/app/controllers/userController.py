from flask import jsonify, request
from flask_jwt_extended import jwt_required, create_access_token, get_jwt_identity
import datetime
from app.models.movieModel import Movie
from app.models.userModel import User
from app.models.favoriteModel import Favorite
from app.config import db, bcrypt, nlp


class UserController:
    #MOVIE LIST
    def movieList():
        movies = Movie.query.all()
        movies_dict_list = [movie.to_dict() for movie in movies]
        return jsonify({"status": "success", "Total movies": len(movies_dict_list), "data": movies_dict_list})
    
    #MOVIE SEARCH OR FILTER
    def movieSearch():
        keyword = request.args.get('keyword')
        genres = request.args.getlist('genres')
        imdbScore = request.args.get('imdbScore')
        popularity = request.args.get('popularity')
        # print(genres, movieLength, year)     
        if keyword:
            doc = nlp(keyword)
            keywords = [token.text for token in doc if not token.is_stop]
            movies = Movie.query.all()
            movies_dict_list = [movie.to_dict() for movie in movies]
            search_movies = []
            for i in movies_dict_list:
                for j in keywords:
                    if j.lower() in i['name'].lower():
                        search_movies.append(i)
                    if j.lower() in i['director'].lower():
                        search_movies.append(i)
            if len(search_movies)>=1:
                return jsonify({"status": "success", "data": search_movies})
            return jsonify({"status": "success", "message": "No movies found!"})
        else:
            movies = Movie.query.all()
            movies_dict_list = [movie.to_dict() for movie in movies]
            filtered_movies = []
            for i in movies_dict_list:
                if len(genres) >= 1:
                    genre_match = False
                    for j in genres:
                        if j.lower().capitalize() in i['genre'].split(','):
                            genre_match = True
                            break  # Exit the loop since a match is found
                    if not genre_match:
                        continue
                if imdbScore and i['imdb_score'] < float(imdbScore):
                    continue
                if popularity and i['popularity'] < float(popularity):
                    continue
                filtered_movies.append(i)
            if len(filtered_movies)>=1:
                return jsonify({"status": 'success', "data": filtered_movies})
            else:
                return jsonify({"status": 'success', "data": movies_dict_list}) 

    #MOVIE DETAILS
    def movieDetails():
        mid = request.args.get('mid')
        movie = Movie.query.filter_by(id=mid).first()
        if movie:
            movie = movie.to_dict()
            response = {'status': 'success', "data": movie}
        else:
            response = {'status': 'error', "message": 'No movie found!'}
        return jsonify(response), 200
    
    #MOVIES TO FAVORITES
    @jwt_required()
    def addToFavorite():
        mid = request.args.get('mid')
        user = get_jwt_identity()
        user_id = User.query.filter_by(email=user).first()
        if user_id:
            user_id = user_id.to_dict()['id']
        if not user or not mid:
            return jsonify({"status": "error", "message": "Invalid request!"})
        existing_movie = Favorite.query.filter_by(movie_id=mid).first()
        if existing_movie:
            return jsonify({"status": "error", "message":"Movie already in favorites!"})
        new_movie = Favorite(user_id=user_id, movie_id=int(mid))
        db.session.add(new_movie)
        db.session.commit()
        return jsonify({"status": "success", "message": "Movie added to favorites"})

    #FAVORITE MOVIES
    @jwt_required()
    def favoriteMovies():
        user = get_jwt_identity()
        user_id = User.query.filter_by(email=user).first()
        if user_id:
            user_id = user_id.to_dict()['id']
            favorites = Favorite.query.filter_by(user_id=user_id).all()
            if len(favorites)>=1:
                fav_movies_Ids = [fav.to_dict()['movie_id'] for fav in favorites]
                fav_movies_list=[]
                for mid in fav_movies_Ids:
                    movie = Movie.query.filter_by(id = mid).first()
                    if movie:
                        movie = movie.to_dict()
                        fav_movies_list.append(movie)
                return jsonify({"status": "success", "data": fav_movies_list})
            else:
                return jsonify({"status": "success", "message": "No movies in your favorites"})
        else:
            return jsonify({"status": "error", "message": "Please login to continue!"})
    
    #REMOVE MOVIE FROM FAVORITE
    @jwt_required()
    def removeFromFavorite():
        user= get_jwt_identity()
        userID = User.query.filter_by(email=user).first()
        if userID:
            userID = userID.to_dict()['id']
        mid = int(request.args.get('mid'))
        fav_movie = Favorite.query.filter_by(user_id=userID, movie_id=mid).first()
        if fav_movie:
            db.session.delete(fav_movie)
            db.session.commit()
            return jsonify({"status": "success", "message": "Movie removed from favorites"})
        else:
            return jsonify({"status": "error", "message": "Movie not found in favorites!"})

    #USER REGISTER
    def userSignUp():
        data = request.json
        name = data.get('name')
        email = data.get('email')
        password = data.get('password')
        passwordConfirm = data.get('passwordConfirm')
        role = data.get('role')
        #IF ANY FIELD IS EMPTY
        if(not name or not email or not password or not passwordConfirm):
            return jsonify({"status": 'Error', "message": "Please fill all fields"}), 400
        #IF USER ALREADY EXISTS
        existing_user = User.query.filter_by(email=email).first()
        if existing_user:
            return jsonify({"status": "Error", "message": "Email address already registered!"})
        #IF PASSWORD LENGTH IF LESS THAN 8 CHARACTERS
        if len(password)<8:
            return jsonify({"status": "Error", "message": "Password should be atleast 8 characters!"})
        #IF PASSWORD AND CONFIRM-PASSWORD DON'T MATCH
        if(password != passwordConfirm):
            return jsonify({"status": "Error", "message": "Passwords don't match"}), 400
        try:
            hashed_password = bcrypt.generate_password_hash(password).decode('utf-8')
            new_user = User(name=name,email=email,password=hashed_password,role=role)
            db.session.add(new_user)
            db.session.commit()
            response = {'status': 'success', "message": "Registered Successfully"}
            return jsonify(response), 201
        except Exception as e:
            print(e)
            return jsonify({"status": "Error", "message": 'ERROR'})
    
    #USER LOGIN
    def userLogin():
        data= request.json
        email = data.get('email')
        password = data.get('password')

        if(not email or not password):
            return jsonify({"status": "Error", "message": "Please fill all fields"}), 400
        user = User.query.filter_by(email=email).first()
        if not user:
            return jsonify({"status": "Error","message": "Invalid credencials!"})
        is_password_correct = bcrypt.check_password_hash(user.password, password)
        if is_password_correct:
            expiration = datetime.timedelta(hours=24)
            access_token = create_access_token(identity=email, expires_delta=expiration)
            response = {'status': 'success', "message": "Successfully Logged In", "token": access_token}
            return jsonify(response), 200
        else:
            return jsonify({"status": "Error", "message": "Invalid credencials!"})