FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:c064f602648c9361aeb54681b52042893b71aa3d2de21a73182476d161596e50

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
