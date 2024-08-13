# Projeto Nginx com Docker & Hadolint

Este projeto demonstra como configurar um servidor Nginx para servir uma página HTML estática usando Docker e Docker Compose. O objetivo é fornecer um exemplo básico de como usar o Nginx em um container Docker.

## Estrutura do Projeto

* **Dockerfile:** Define a imagem Docker para a aplicação, usando o Nginx.
* **docker-compose.yml:** Configura o Docker Compose para construir e iniciar o container Nginx. O arquivo docker-compose.yml define o serviço nginx e mapeia a porta 80 do container para a porta 80 do host.
* **index.html:** Contém o conteúdo HTML da página que será servida pelo Nginx.

# Detalhes Técnicos

## Docker

### Dockerfile
O Dockerfile utiliza a imagem base nginx:alpine e copia o arquivo index.html para o diretório padrão de documentos do Nginx.

### Docker-compose.yml
O arquivo docker-compose.yml define o serviço nginx e mapeia a porta 80 do container para a porta 80 do host.

## Uso do Hadolint para Análise de Dockerfiles

### Introdução ao Hadolint

O [Hadolint](https://github.com/hadolint/hadolint) é uma ferramenta de análise estática para Dockerfiles que ajuda a identificar más práticas, possíveis erros e recomendações de segurança. Integrar o Hadolint em seu fluxo de trabalho pode melhorar a qualidade e a segurança dos seus contêineres Docker.

### Exemplo de Uso do Hadolint

Considere o seguinte exemplo de Dockerfile:

```dockerfile
# Usando a imagem oficial do Nginx do Docker Hub
FROM nginx:latest

# Copiando a index.html para o diretório apropriado
COPY index.html /usr/share/nginx/html/index.html
```
## Problema Identificado

O Hadolint identificou o seguinte problema:

```
DL3007 warning: Using latest is prone to errors if the image will ever update. Pin the version explicitly to a release tag
```
Usar a tag latest para a imagem base pode causar problemas porque a imagem pode ser atualizada no Docker Hub, levando a mudanças inesperadas no comportamento do contêiner. Isso pode resultar em quebras em ambientes de produção, uma vez que novas atualizações podem introduzir mudanças incompatíveis.

## Solução
Corrigimos o problema especificando uma versão específica do Nginx, como mostrado abaixo:

```
# Usando uma versão específica do Nginx do Docker Hub
FROM nginx:1.25.2

# Copiando a index.html para o diretório apropriado
COPY index.html /usr/share/nginx/html/index.html
```
Integrar o Hadolint em seu fluxo de trabalho de CI/CD é uma prática recomendada para garantir que seus Dockerfiles estejam sempre em conformidade com as melhores práticas da indústria, ajudando a manter seus sistemas robustos e seguros.

# Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

# Configuração do Projeto

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
