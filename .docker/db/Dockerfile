# Usa a imagem oficial do MySQL 8.0
FROM mysql:8.0

# Copia todos os arquivos da pasta 'init-scripts' local para o diretório
# de inicialização do MySQL dentro do container.
# O Docker executará esses scripts em ordem alfabética na primeira inicialização.
COPY .docker/db/init-scripts/ /docker-entrypoint-initdb.d/

# O restante da configuração da imagem base é mantido.