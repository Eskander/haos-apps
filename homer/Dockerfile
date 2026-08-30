FROM ghcr.io/bastienwirtz/homer:v26.08.3

# Use root
USER 0

# Overlay files
COPY rootfs /

ENTRYPOINT ["/run.sh"]
