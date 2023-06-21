# Utilisez une image de base appropriée pour votre application Django
FROM python:3.9.12

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers Django
COPY manage.py /app/backend/manage.py
COPY My_RH_Solution /app/backend/My_RH_Solution

# Installez les dépendances Python pour Django
COPY requirements.txt /app/backend/requirements.txt
RUN pip install -r /app/backend/requirements.txt

# Définissez la commande de démarrage de l'application
CMD python /app/backend/manage.py runserver 0.0.0.0:8000

