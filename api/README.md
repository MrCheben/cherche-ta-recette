
# Flask API Project

Ce projet est une API simple construite avec Flask. Suivez les instructions ci-dessous pour configurer votre environnement de développement et exécuter l'application.

## Prérequis

- Python 3.x installé sur votre machine.
- Git pour cloner le dépôt.

## Installation

1. **Cloner le dépôt** :
   ```bash
   git clone <URL-du-dépôt>
   cd <nom-du-dépôt>
   ```

2. **Créer un environnement virtuel** :
   - Sur Windows :
     ```bash
     python -m venv venv
     ```
   - Sur macOS/Linux :
     ```bash
     python3 -m venv venv
     ```

3. **Activer l'environnement virtuel** :
   - Sur Windows :
     ```bash
     venv\Scripts\activate
     ```
   - Sur macOS/Linux :
     ```bash
     source venv/bin/activate
     ```

4. **Installer les dépendances** :
   ```bash
   pip install -r requirements.txt
   ```

## Exécution de l'application

Pour lancer l'application Flask, exécutez la commande suivante dans le répertoire du projet :

```bash
python app.py
```

L'application sera accessible à l'adresse `http://127.0.0.1:5000/`.

## Structure du projet

- `app.py` : Fichier principal de l'application Flask.
- `requirements.txt` : Liste des dépendances Python nécessaires pour le projet.

## Contribuer

1. Créez une branche pour votre fonctionnalité ou correction de bug :
   ```bash
   git checkout -b ma-nouvelle-branche
   ```

2. Effectuez vos modifications et validez-les :
   ```bash
   git add .
   git commit -m "Description de vos modifications"
   ```

3. Poussez vos modifications vers le dépôt distant :
   ```bash
   git push origin ma-nouvelle-branche
   ```

4. Ouvrez une Pull Request pour que vos modifications soient révisées et fusionnées.
