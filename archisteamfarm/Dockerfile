FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:1827bb7e27f8e3e1d8560d9939a7edd8b1322c5903533ec776bc48b7685d1269

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
