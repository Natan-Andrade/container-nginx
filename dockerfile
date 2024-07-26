#Usando a imagem oficial do Nginx do Docker Hub
FROM nginx:latest

#Copiando a index.html para o diretório apropriado
COPY index.html /usr/share/nginx/html/index.html