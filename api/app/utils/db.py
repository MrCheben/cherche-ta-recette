import sqlite3

print("db.py")

# Fonction pour obtenir une connexion à la base de données
def get_db_connection():
    conn = sqlite3.connect('utils/ctt.db')
    conn.row_factory = sqlite3.Row
    return conn