FROM ghcr.io/bastienwirtz/homer:v24.05.1

# Use root
USER 0

# Overlay files
COPY rootfs /

ENTRYPOINT ["/bin/sh", "/run.sh"]
