FROM ghcr.io/bastienwirtz/homer:v25.05.2

# Use root
USER 0

# Overlay files
COPY rootfs /

ENTRYPOINT ["/run.sh"]
