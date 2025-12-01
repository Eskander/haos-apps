FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:c3953cca7ade5452e97a616b15a207d91c557dcb58175e120845e8460ba6d529

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
