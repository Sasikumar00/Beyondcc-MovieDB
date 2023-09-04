from app.routes.userRoutes import user_bp
from app.routes.adminRoutes import admin_bp
from flask_jwt_extended import JWTManager
from app.config import app, db
from flask_migrate import Migrate
# from app.models.movieModel import db as movie_db
# from app.models.userModel import db as user_db


app.config['JWT_SECRET_KEY'] = '3sdfg@#%235*-~32523@#%@'
jwt = JWTManager(app)
db = db
migrate = Migrate(app, db)

app.register_blueprint(user_bp)
app.register_blueprint(admin_bp)

if __name__ == '__main__':
    app.run(debug=True)