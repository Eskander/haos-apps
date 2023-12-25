ARG BUILD_FROM
FROM $BUILD_FROM

USER 0

# Copy root filesystem
COPY rootfs /

# Symlink addon config directory
RUN rm -v -rf /www/assets && ln -v -s /config /www/assets

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
