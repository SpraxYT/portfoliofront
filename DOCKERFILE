# Dockerfile
FROM node:20-alpine

# Crée le dossier de l'app
WORKDIR /app

# Copie package.json et installe les deps
COPY package*.json ./
RUN npm install

# Copie le reste du projet
COPY . .

# Expose le port Vite
EXPOSE 5173

# Commande pour dev
CMD ["npm", "run", "dev", "--", "--host"]
