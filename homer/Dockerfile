FROM ghcr.io/bastienwirtz/homer:v23.10.1

# Use root
USER 0

# Overlay files
COPY rootfs /

# Symlink config directory
RUN rm -rfv /www/assets && ln -sv /config /www/assets

ENTRYPOINT ["/bin/sh", "/run.sh"]
