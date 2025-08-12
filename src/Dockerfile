FROM ghcr.io/bastienwirtz/homer:v25.08.1

# Use root
USER 0

# Overlay files
COPY rootfs /

ENTRYPOINT ["/run.sh"]
