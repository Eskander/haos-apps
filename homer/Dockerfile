FROM ghcr.io/bastienwirtz/homer:v23.10.1

# Use root
USER 0

# Copy root filesystem
COPY rootfs /

# Symlink addon config directory
RUN rm -v -rf /www/assets && ln -v -s /config /www/assets

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
