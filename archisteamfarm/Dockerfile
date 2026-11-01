FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:60527adac5e008f08f4852d3c82a3ab5f3c7eb3311c05611b291f40669990efd

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
