#!/usr/bin/env sh

# Work around permission issues
sed -i 's/^accesslog.filename.*/accesslog.filename = "\/dev\/stdout"/' /lighttpd.conf

chmod +x /entrypoint.sh
exec /entrypoint.sh
