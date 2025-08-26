FROM node:22-alpine

WORKDIR /app

# Forcer le registry public pour éviter le 403
RUN npm config set registry https://registry.npmjs.org/

COPY package*.json ./
RUN npm ci --registry=https://registry.npmjs.org/

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev", "--", "--host"]
