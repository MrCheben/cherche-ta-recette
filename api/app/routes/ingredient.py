from flask import Blueprint, jsonify
from ..utils.db import get_db_connection

ingredient_bp = Blueprint('ingredient', __name__)

print(get_db_connection())

@ingredient_bp.route('/ingredients', methods=['GET'])
def get_ingredients():
    conn = get_db_connection()
    ingredients = conn.execute('SELECT * FROM ingredient').fetchall()
    conn.close()
    ingredients_list = [dict(ingredient) for ingredient in ingredients]
    return jsonify(ingredients_list)

@ingredient_bp.route('/ingredients/<int:id>', methods=['GET'])
def get_ingredient(id):
    conn = get_db_connection()
    ingredient = conn.execute('SELECT * FROM ingredient WHERE id_ingredient = ?', (id,)).fetchone()
    conn.close()
    if ingredient is None:
        return jsonify({'error': 'Ingredient introuvable'}), 404
    return jsonify(dict(ingredient))
