# iamgen base
FROM node
# directorio base de la app 
WORKDIR /app
# archivo donde estan las dependencias
COPY package.json /app
# ejecutar comando dentro del container
RUN npm install
# copiasr el proyecto hacia el container
COPY . /app
# el puerto por el cual el container se puede acceder
EXPOSE 80
# ejecutara ese comando cuando se cree el container
# sino hay, ejecutara el comando de la imagen base
CMD [ "node", "server.js" ]