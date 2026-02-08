FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:c97e2d9895319eabf0d8bbf770e6045ab604e949cca5db99c2532620701ef4ca

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
