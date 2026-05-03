FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:2b20b7f3857bbda1be3f58f33610d1f5a66be449c9edcf415cd5baa6e7c5d4b4

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
