#!/bin/sh

# Set Ingress compatibility
if [ ! -f /www/assets/config.yml ]; then
    echo "Initializing config..."
    echo -e "\n# Disabled for compatibility with Home Assistant Ingress\nconnectivityCheck: false" >> /www/default-assets/config.yml.dist
else
    echo "Verifying config..."
    if grep -q "connectivityCheck" /www/assets/config.yml; then
        sed -i 's/^connectivityCheck:.*/connectivityCheck: false/' /www/assets/config.yml
    else
        echo -e "\n# Disabled for compatibility with Home Assistant Ingress\nconnectivityCheck: false" >> /www/assets/config.yml
    fi
fi

chmod +x /entrypoint.sh
exec /entrypoint.sh
