
# Utilisation d'une image Node.js légère
FROM node:18-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers
COPY . .

# Construire l'application React
RUN npm run build

# Installer 'serve' pour servir l'application
RUN npm install -g serve

# Exposer le bon port
EXPOSE 3000

# Lancer l'application en mode production
#CMD ["serve", "-s", ".", "-l", "3000"]
CMD ["npm", "start"]
