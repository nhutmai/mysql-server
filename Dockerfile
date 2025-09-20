FROM mysql:8.0

# Thiết lập các biến môi trường mặc định (sẽ được override bởi render.yaml)
ENV MYSQL_ROOT_PASSWORD=defaultpassword
ENV MYSQL_DATABASE=myappdb
ENV MYSQL_USER=appuser
ENV MYSQL_PASSWORD=apppassword

EXPOSE 3306

HEALTHCHECK --interval=10s --timeout=5s --retries=10 CMD mysqladmin ping -h 127.0.0.1 || exit 1
