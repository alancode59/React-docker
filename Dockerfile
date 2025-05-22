FROM node:23.6.1-alpine

WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto que usa Vite por defecto
EXPOSE 5173

# Comando para iniciar el servidor de desarrollo
CMD ["npx", "vite", "--host"]
