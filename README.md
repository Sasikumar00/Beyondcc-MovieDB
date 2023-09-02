# Beyondcc Movies API

This is a simple Flask-based RESTful API for managing a collection of movies. With this API, you can perform basic CRUD (Create, Read, Update, Delete) operations on a list of movies.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Database Setup](#database-setup)
- [API Endpoints](#api-endpoints)
- [Contributing](#contributing)
- [License](#license)

## Features

- Add new movies with details like title, genre, release year, and director (Admin only).
- Retrieve a list of all movies.
- Get details of a specific movie by its ID.
- Update movie information(Admin only).
- Delete a movie from the catalog(Admin only).

## Getting Started

Follow these instructions to set up and run the Flask Movies API on your local machine.

### Prerequisites

- Python 3.6 or higher
- pip (Python package manager)

### Installation

1. Clone this repository to your local machine:
```
git clone https://github.com/yourusername/flask-movies-api.git
```
2. Navigate the project directory:
```
cd server
```
3. Create a virual environment:
```
python -m venv venv
```
4. Activate the virtual environment: <br />
   On Windows:
   ```
   venv\Scripts\activate
   ```
   On maxOS or Linux:
   ```
   source venv/bin/activate
   ```
5. Install the required packages:
```
pip install -r requirements.txt
```

## Usage

1. Start the Flask application:
```
flask run
```
2. Your API should now be running at `http://localhost:5000`.
3. You can use tools like [Postman](https://www.postman.com/) or [curl](https://curl.se/) to interact with the API endpoints.

## Database Setup
1. Install MySQL server (ignore if already installed)
2. Create a new database:
```
CREATE DATABASE beyondcc;
```
3. Import the database dump: (password required)
```
mysql -u your_username -p beyondcc < movie_api_database.sql
```
4. Configure the config.py with your database username and password:
```
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqlconnector://your_username:your_password@localhost/Beyondcc'
```
5. Test the database by making API calls

## API Endpoints

- **GET** `/movies`: Retrieve a list of all movies.
- **GET** `/movies/details?mid=301`: Get details of a specific movie by its ID.
- **POST** `/signup`: Sign up by providing name,email,password,passwordConfirm in JSON format.
- **POST** `/login`: Login to recieve the JWT token. Login is required to add movies to favorites.
- **GET** `/user/favoritess`: Get list of all the movies you added to favorites.
- **POST** `/user/removeFav?mid=304`: Remove movie metadata from favorites by specifying its ID.
#### Admin Only
- **POST** `/admin/add_movie`: Add a new movie with JSON data containing title, year, movieLength, and genres.
- **PATCH** `/admin/update_movie?mid=304`: Update movie information by specifying its ID and providing updated data in JSON format.
- **DELETE** `/admin/delete_movie?mid=304`: Delete a movie from the catalog by its ID.
- **GET** `/admin/users`: Get list of all registered users

## Example Response
```
{
    "data": [
        {
            "genres": "Documentary",
            "id": 205,
            "runtimeminutes": "95",
            "title": "Istoriya grazhdanskoy voyny",
            "year": "2021"
        },
        {
            "genres": "Drama",
            "id": 206,
            "runtimeminutes": "78",
            "title": "El realismo socialista",
            "year": "2023"
        }
      ],
      "status": "success"
}
```
