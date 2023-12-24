ARG BUILD_FROM
FROM $BUILD_FROM

USER 0
RUN rm -v -fR /www/assets
RUN ln -v -s /config /www/assets

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
