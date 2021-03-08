#FROM scratch en el caso del codigo compilado de forma estatica
FROM alpine
#equivale a mkdir -p /app && cd /app 
WORKDIR /app
COPY src .
#instalacion php (equivalente yum install php)
RUN apk add php
#queremos ejecutar "php index.php"
ENTRYPOINT /usr/bin/php
#opciones o argumentos
CMD -f index.php -S 0.0.0.0:8080
