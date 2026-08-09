FROM ghcr.io/justarchinet/archisteamfarm:latest@sha256:fa6c8eb8b1469bf74bb5389486da7728a20b359a5aa79d9061127c4aa6b7c859

# Overlay files
COPY rootfs /

RUN ln -s /app/logs /data

ENTRYPOINT ["/run.sh"]
