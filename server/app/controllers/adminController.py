from flask import jsonify, request
from flask_jwt_extended import jwt_required, get_jwt_identity
import datetime
from app.models.movieModel import Movie
from app.models.userModel import User
from app.config import db

class Admincontroller:
    @jwt_required()
    def addMovie():
        user = get_jwt_identity()
        check_user = User.query.filter_by(email=user).first()
        if check_user:
            role = check_user.to_dict()['role']
        if role=='admin':
            name = request.json.get('name')
            existing_movie = Movie.query.filter_by(name=name).first()
            if existing_movie:
                existing_movie = existing_movie.to_dict()
            if existing_movie and len(existing_movie)>=1:
                return jsonify({"status": 'error', "message": "Movie already added!"})
            popularity = request.json.get('popularity')
            director = request.json.get('director')
            genres =  request.json.get('genres')
            imdbScore =  request.json.get('imdbScore')
            new_movie = Movie(name=name, popularity=popularity,director=director, genre=genres, imdb_score=imdbScore)
            db.session.add(new_movie)
            db.session.commit()
            return jsonify({"status": 'success', "message": "Movie successfully added"})
        else:
            return jsonify({"status": 'error', "message": "Unauthorized"})
        

    @jwt_required()
    def deleteMovie():
        user = get_jwt_identity()
        check_user = User.query.filter_by(email=user).first()
        if check_user:
            role = check_user.to_dict()['role']
        if role=='admin':
            mid = request.args.get('mid')
            movie = Movie.query.filter_by(id=mid).first()
            if movie:
                db.session.delete(movie)
                db.session.commit()
                return jsonify({"status": "success", "message": "Movie successfully deleted"})
            else:
                return jsonify({"status": "error", "message": "No movie found!"})
        else:
            return jsonify({"status": 'error', "message": "Unauthorized"})
        

    @jwt_required()
    def updateMovie():
        user = get_jwt_identity()
        check_user = User.query.filter_by(email=user).first()
        if check_user:
            role = check_user.to_dict()['role']
        if role=='admin':
            mid = request.args.get('mid')
            data = request.json
            movie = Movie.query.filter_by(id=mid).first()
            if not movie:
                return jsonify({"status": "error", "message": "No movie found!"})
            if 'name' in data:
                movie.name = data['name']
            if 'popularity' in data:
                movie.popularity = data['popularity']
            if 'director' in data:
                movie.director = data['director']
            if 'genres' in data:
                movie.genre = data['genres']
            if 'imdbScore' in data:
                movie.imdb_score = data['imdbScore']
            db.session.commit()
            return jsonify({"status": 'success', "message": "Movie updated successfully"})
        else:
            return jsonify({"status": 'error', "message": "Unauthorized"})
        
    @jwt_required()
    def getAllUsers():
        user = get_jwt_identity()
        check_user = User.query.filter_by(email=user).first()
        if check_user:
            role = check_user.to_dict()['role']
        if role=='admin':
            usersObj = User.query.all()
            users = [user.to_dict() for user in usersObj]
            return jsonify({"status": "success", "data": users})
        else:
            return jsonify({"status": 'error', "message": "Unauthorized"})


