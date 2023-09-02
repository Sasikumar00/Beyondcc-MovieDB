from sqlalchemy_serializer import SerializerMixin
from app.config import db

class User(db.Model, SerializerMixin):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100))
    email = db.Column(db.String(100))
    password = db.Column(db.String(200))
    role = db.Column(db.Enum('user', 'admin'),default='user')
