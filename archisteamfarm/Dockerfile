FROM ghcr.io/justarchinet/archisteamfarm:6.3.3.3

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
