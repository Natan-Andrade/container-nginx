# Projeto Nginx com Docker

Este projeto demonstra como configurar um servidor Nginx para servir uma página HTML estática usando Docker e Docker Compose. O objetivo é fornecer um exemplo básico de como usar o Nginx em um container Docker.

## Estrutura do Projeto

* **Dockerfile:** Define a imagem Docker para a aplicação, usando o Nginx.
* **docker-compose.yml:** Configura o Docker Compose para construir e iniciar o container Nginx. O arquivo docker-compose.yml define o serviço nginx e mapeia a porta 80 do container para a porta 80 do host.
* **index.html:** Contém o conteúdo HTML da página que será servida pelo Nginx.

## Detalhes Técnicos

### Dockerfile
O Dockerfile utiliza a imagem base nginx:alpine e copia o arquivo index.html para o diretório padrão de documentos do Nginx.

### Docker-compose.yml
O arquivo docker-compose.yml define o serviço nginx e mapeia a porta 80 do container para a porta 80 do host.

## Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Configuração do Projeto

1. **Clone o Repositório**

   Clone o repositório para o seu ambiente local:

   ```bash
   git clone https://github.com/Natan-Andrade/container-nginx.git
   cd container-nginx

## Construir e Iniciar o Contêiner

Construa a imagem Docker e inicie o contêiner usando Docker Compose:

```bash
docker compose build
docker compose up
```

Após iniciar o contêiner, abra um navegador e acesse http://localhost:8080. Você deverá ver a página HTML.
- Para listar o container em andamento, basta utilizar o comando:
   ```bash
   docker container ls
   ```
- Para parar o container e exclui-lo:
   ```bash
   #parar
   docker container stop <id_do_container>
   #deletar
   docker rm -f <id_do_container>
   ```
