# Utilisez une image de base appropriée pour votre application Django
FROM python:3.9.12

# Installer Node.js
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers package.json et package-lock.json du frontend dans le répertoire de travail
COPY frontend/package*.json ./frontend/

# Installez les dépendances Node.js pour le frontend
RUN cd frontend && npm install

# Copiez les fichiers Django

COPY src/manage.py .
COPY src/my_rh_solution ./my_rh_solution
# Installez les dépendances Python pour Django
COPY requirements.txt .
RUN pip install -r requirements.txt

# Exposez le port sur lequel votre application Vue.js s'exécute
EXPOSE 8080

# Définissez la commande de démarrage de l'application
CMD python manage.py runserver 0.0.0.0:8000
