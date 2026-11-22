FROM ghcr.io/homer-dashboard/homer:v26.11.4

# Use root
USER 0

# Overlay files
COPY rootfs /

ENTRYPOINT ["/run.sh"]
