from flask_sqlalchemy import SQLAlchemy
from flask import Flask
from flask_bcrypt import Bcrypt
import spacy
import os
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)

bcrypt = Bcrypt(app)

nlp = spacy.load('en_core_web_sm')


app.config['SQLALCHEMY_DATABASE_URI'] = f'mysql+mysqlconnector://{os.environ.get("DB_USER")}:{os.environ.get("DB_PASSWORD")}@localhost/Beyondcc'
db = SQLAlchemy(app)