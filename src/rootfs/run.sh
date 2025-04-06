#!/usr/bin/env sh

CHECK=$(/get_option.sh connectivity_check)

if [ -f "/www/assets/config.yml" ]; then
    echo "Verifying config..."
    if grep -q "^connectivityCheck:" "/www/assets/config.yml"; then
        sed -i "s/^connectivityCheck:.*/connectivityCheck: $CHECK/" "/www/assets/config.yml"
    else
        echo "connectivityCheck: $CHECK" >> "/www/assets/config.yml"
    fi
else
    echo "Initializing config..."
    echo "connectivityCheck: $CHECK" >> "/www/default-assets/config.yml.dist"
fi

# Work around permission issues
sed -i 's/^accesslog.filename.*/accesslog.filename = "\/dev\/stdout"/' /lighttpd.conf

chmod +x /entrypoint.sh
exec /entrypoint.sh
