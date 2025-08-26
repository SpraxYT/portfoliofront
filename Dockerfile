FROM node:22-alpine
WORKDIR /app
COPY . .
EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host"]