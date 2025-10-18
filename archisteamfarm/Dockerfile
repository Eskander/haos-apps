FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:a8ad36e5c6ae01370c81c331d6d70ff3c32b0d980d6d4b6d2592f439427d4520

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
