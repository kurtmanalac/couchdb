# Use the official CouchDB image as the base
FROM couchdb:3.5

# Set environment variables for the initial admin user
# In production, use Docker Secrets or external environment files
ENV COUCHDB_USER=admin
ENV COUCHDB_PASSWORD=adminpw

# (Optional) Copy a custom configuration file
# This allows you to tune performance or network settings
# COPY local.ini /opt/couchdb/etc/local.d/

# Expose the default CouchDB port
EXPOSE 5984

# The base image already handles the entrypoint, 
# so no CMD is strictly necessary unless you are overriding behavior.