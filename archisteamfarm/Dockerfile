FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:b55652a78bf9f122535ecf8c740a5a2311b27f830a1f63a4b2eeb7cbecf865fc

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
