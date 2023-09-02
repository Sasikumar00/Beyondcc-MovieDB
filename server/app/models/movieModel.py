from sqlalchemy_serializer import SerializerMixin
from app.config import db

class Movie(db.Model, SerializerMixin):
    __tablename__ = 'movies'
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100))
    year = db.Column(db.String(4))
    runtimeminutes = db.Column(db.String(4))
    genres = db.Column(db.String(200))
