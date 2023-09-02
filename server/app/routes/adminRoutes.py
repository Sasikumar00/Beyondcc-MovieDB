from flask import Blueprint
from app.controllers.adminController import Admincontroller

admin_bp = Blueprint('admin', __name__)

#CREATE NEW MOVIE
@admin_bp.route('/admin/add_movie', methods=['POST'])
def addMovie():
    return Admincontroller.addMovie()
#UPDATE A MOVIE
@admin_bp.route('/admin/update_movie', methods=['PATCH'])
def updateMovie():
    return Admincontroller.updateMovie()
#DELETE A MOVIE
@admin_bp.route('/admin/delete_movie', methods=['DELETE'])
def deleteMovie():
    return Admincontroller.deleteMovie()
#VIEW ALL USERS
@admin_bp.route('/admin/users', methods=['GET'])
def getAllUsers():
    return Admincontroller.getAllUsers()