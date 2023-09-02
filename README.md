# Beyondcc Movies API

This is a simple Flask-based RESTful API for managing a collection of movies. With this API, you can perform basic CRUD (Create, Read, Update, Delete) operations on a list of movies.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Contributing](#contributing)
- [License](#license)

## Features

- Add new movies with details like title, genre, release year, and director (Admin only).
- Retrieve a list of all movies.
- Get details of a specific movie by its name.
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
