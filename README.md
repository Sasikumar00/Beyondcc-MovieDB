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
- [Example Response](#example-response)
- [Users and Roles](#users)

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
git clone https://github.com/Sasikumar00/Beyondcc-MovieDB.git
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

1. Set the FLASK_APP: <br />
   On bash:
   ```
   export FLASK_APP = main
   ```
   On Windows:
   ```
   set FLASK_APP = main
   ```
2. Start the Flask application:
```
flask run
```
3. Your API should now be running at `http://localhost:5000`.
4. You can use tools like [Postman](https://www.postman.com/) or [curl](https://curl.se/) to interact with the API endpoints.

## Database Setup
1. Install MySQL server (ignore if already installed)
2. Create a new database:
```
CREATE DATABASE beyondcc;
```
3. Import the database dump: (password required)
```
mysql -u your_username -p beyondcc < movies_api_database.sql
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
    "Total movies": 249,
    "data": [
        {
            "director": "Victor Fleming",
            "genre": "Adventure,  Family,  Fantasy,  Musical",
            "id": 1,
            "imdb_score": 8.3,
            "name": "The Wizard of Oz",
            "popularity": 83.0
        },
        {
            "director": "George Lucas",
            "genre": "Action,  Adventure,  Fantasy,  Sci-Fi",
            "id": 2,
            "imdb_score": 8.8,
            "name": "Star Wars",
            "popularity": 88.0
        }
    ],
    "status: "success"
}
```

### Users
- ADMIN: Use `admin@gmail.com` and `admin12345` as the credencials to login in as admin and perform CRUD operations on movies database.
  - API DOCUMENTATION FOR ADMIN API: https://documenter.getpostman.com/view/24511982/2s9Y5eMzRK
- USER: Use `test@gmail.com` and `test12345` as the credencials to login in as user. This role has permission to view movie metadata, add movies to favorites and remove movies from favorites.
  - API DOCUMENTATION FOR USER API: https://documenter.getpostman.com/view/24511982/2s9Y5eMzRM
