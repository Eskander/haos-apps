FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:dc52432242b58484bdcf462a8d39432522f89f9d9e502ee9b7f4163c0f7e3e0a

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
