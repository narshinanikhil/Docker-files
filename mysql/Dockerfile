FROM mysql:8.4

ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=job_portal

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

