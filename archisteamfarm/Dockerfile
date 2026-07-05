FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:5d85121c5da319a0ae7e95d0d3a9b769fb164db6e48885407a8fba62ccd73221

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
