FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:7f0353aa13bf3d20d45c06342c1c6c48b801c01dbf9a33731b5bcac01dddece9

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
