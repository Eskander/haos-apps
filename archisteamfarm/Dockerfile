FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:3cdea606e5fae1efc9d0a62ed2d18ded4f9d3b45b971d31a90abd8ff3cee1d54

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
