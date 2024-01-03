#!/bin/sh

# Set Ingress compatibility
if [ ! -f /config/config.yml ]; then
    echo "Initializing Ingress support"
    echo -e "\n# Compatibility for Home Assistant Ingress\nconnectivityCheck: false" >> /www/default-assets/config.yml.dist
else
    echo "Verifying Ingress support"
    if grep -q "connectivityCheck" /config/config.yml; then
        sed -i 's/^connectivityCheck:.*/connectivityCheck: false/' /config/config.yml
    else
        echo -e "\n# Compatibility for Home Assistant Ingress\nconnectivityCheck: false" >> /config/config.yml
    fi
fi

chmod +x /entrypoint.sh
exec /entrypoint.sh
