from flask import Flask

def create_app():
    app = Flask(__name__)

    # Configuration de l'application
    #app.config.from_object('config.Config')

    # Enregistrement des blueprints
    from .routes.ingredient import ingredient_bp
    app.register_blueprint(ingredient_bp)

    return app
