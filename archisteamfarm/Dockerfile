FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:f8d045a7c14139a87ba0372b0c88eb1ca7230342d0d48e9a94cafbf7a4b278d8

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
