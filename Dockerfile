FROM couchdb:3.5

ENV COUCHDB_USER=admin
ENV COUCHDB_PASSWORD=adminpw
ENV NODENAME=127.0.0.1

COPY local.ini /opt/couchdb/etc/

# CMD ["startup.sh"]