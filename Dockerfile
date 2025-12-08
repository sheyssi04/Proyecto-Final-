# Usa una imagen base de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia package.json y package-lock.json
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el código de la app
COPY . .

# Expone el puerto (usa el que definiste en app.js)
EXPOSE 3000

# Comando para correr la app
CMD ["npm", "start"]