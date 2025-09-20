FROM mysql:8.0

EXPOSE 3306

HEALTHCHECK --interval=10s --timeout=5s --retries=10 CMD mysqladmin ping -h 127.0.0.1 || exit 1
