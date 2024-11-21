FROM ghcr.io/bastienwirtz/homer:v24.11.4

# Use root
USER 0

# Overlay files
COPY rootfs /

ENTRYPOINT ["/bin/sh", "/run.sh"]
