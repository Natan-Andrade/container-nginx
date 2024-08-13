# Usando uma versão específica do Nginx do Docker Hub
FROM nginx:1.25.2

# Copiando a index.html para o diretório apropriado
COPY index.html /usr/share/nginx/html/index.html
