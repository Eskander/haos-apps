FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:667f0f39a95dcaf6377a9d4f210d3cdb0e1991691fc327854216a843b4d8537e

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
