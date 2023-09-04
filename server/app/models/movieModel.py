from sqlalchemy_serializer import SerializerMixin
from app.config import db

class Movie(db.Model, SerializerMixin):
    __tablename__ = 'movies'
    id = db.Column(db.Integer, primary_key=True)
    popularity = db.Column(db.Float)
    director = db.Column(db.String(255))
    genre = db.Column(db.String(255))
    imdb_score = db.Column(db.Float)
    name = db.Column(db.String(200))
