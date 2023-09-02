from app.routes.userRoutes import user_bp
from app.routes.adminRoutes import admin_bp
from flask_jwt_extended import JWTManager
from app.config import app
# from app.models.movieModel import db as movie_db
# from app.models.userModel import db as user_db


app.config['JWT_SECRET_KEY'] = 'your-secret-key'
jwt = JWTManager(app)
# db.init_app(app)
# movie_db.init_app(app)
# user_db.init_app(app)

app.register_blueprint(user_bp)
app.register_blueprint(admin_bp)

if __name__ == '__main__':
    app.run(debug=True)