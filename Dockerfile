# Utilise une image Node.js officielle
FROM node:14

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie le fichier package.json et package-lock.json dans le conteneur
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie tout le reste du projet dans le conteneur
COPY . .

# Expose le port 3000 pour l'application React
EXPOSE 3000

# Démarre l'application React
CMD ["npm", "start"]
