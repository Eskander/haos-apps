FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:cf92b0bc42b24fd64104d1678ad2309d9ec047b8ecaa1ebe85c6dbb735659325

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
