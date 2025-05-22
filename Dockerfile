FROM node:23.6.1-alpine

WORKDIR /app

#Copiar archivos de package*.json
COPY package*.json ./

#Instalar dependencias
RUN npm install

#Copiar codigo
COPY . .

# Exponer el puerto de Vite 
EXPOSE 5173

#Iniciar el servidor de desarrollo
CMD ["npx", "vite", "--host"]
