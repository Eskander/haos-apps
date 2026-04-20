FROM ghcr.io/bastienwirtz/homer:v26.4.2

# Use root
USER 0

# Overlay files
COPY rootfs /

ENTRYPOINT ["/run.sh"]
