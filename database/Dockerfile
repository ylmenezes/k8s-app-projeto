# Define a imagem base
FROM mysql:5.7

COPY db.sql /docker-entrypoint-initdb.d/

ENV MYSQL_DATABASE=meuBanco \
    MYSQL_USER=myuser \
    MYSQL_PASSWORD=mypassword \
    MYSQL_ROOT_PASSWORD=mypassword

# Define a porta que será exposta pelo contêiner
EXPOSE 3306