from flask import Blueprint
from app.controllers.userController import UserController

user_bp = Blueprint('user',__name__)

#LIST OF MOVIES
@user_bp.route('/movies', methods=['GET'])
def movieList():
    return UserController.movieList()

#SEARCH
@user_bp.route('/movies/search', methods=['GET'])
def movieSearch():
    return UserController.movieSearch()

#MOVIES TO FAVORITES - PROTECTED
@user_bp.route('/user/addToFavorites', methods=['POST'])
def addToFavorites():
    return UserController.addToFavorite()

#FAVORITE MOVIES - PROTECTED
@user_bp.route('/user/favorites', methods=['GET'])
def favoriteMovies():
    return UserController.favoriteMovies()

#DELETE FROM FAVORITE - PROTECTED
@user_bp.route('/user/removeFav', methods=['DELETE'])
def removeFromFav():
    return UserController.removeFromFavorite()

#MOVIE DETAILS
@user_bp.route('/movies/details', methods=['GET'])
def movieDetails():
    return UserController.movieDetails()

#USER LOGIN
@user_bp.route('/login', methods=['POST'])
def userLogin():
    return UserController.userLogin()

#USER SIGNUP
@user_bp.route('/signup', methods=['POST'])
def userSignup():
    return UserController.userSignUp()