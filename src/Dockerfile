FROM ghcr.io/bastienwirtz/homer:v23.10.1

# Use root
USER 0

# Overlay files
COPY rootfs /

ENTRYPOINT ["/bin/sh", "/run.sh"]
