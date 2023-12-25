#!/bin/sh

PERMISSION_ERROR="Check assets directory permissions & docker user or skip default assets install by setting the INIT_ASSETS env var to 0"

# Default assets & exemple configuration installation if possible.
if [[ "${INIT_ASSETS}" == "1" ]] && [[ ! -f "/www/assets/config.yml" ]]; then
    echo "No configuration found, installing default config & assets"
    if [[ ! -w "/www/assets/" ]]; then echo "Assets directory not writable. $PERMISSION_ERROR" && exit 1; fi
    
    while true; do echo n; done | cp -Ri /www/default-assets/* /www/assets/ &> /dev/null
    if [[ $? -ne 0 ]]; then echo "Fail to copy default assets. $PERMISSION_ERROR" && exit 1; fi

    yes n | cp -i /www/default-assets/config.yml.dist /www/assets/config.yml &> /dev/null
    if [[ $? -ne 0 ]]; then echo "Fail to copy default config file. $PERMISSION_ERROR" && exit 1; fi
fi

# Detect ingress_compatibility option from addon configuration.
if grep -q "\"ingress_compatibility\": true" /data/options.json; then
    echo "Option ingress_compatibility is enabled in addon configuration."
    if grep -q "connectivityCheck: true" /config/config.yml; then
        echo "-> Set 'connectivityCheck: false' in addon config.yml"
        sed -i 's/connectivityCheck: true/connectivityCheck: false/' /config/config.yml
    else
        echo "-> Add 'connectivityCheck: false' to addon config.yml"
        echo -e "\n# Compatibility for Home Assistant Ingress" >> /config/config.yml
        echo -e  "connectivityCheck: false" >> /config/config.yml
    fi
else
    echo "Option ingress_compatibility is disabled in addon configuration."
    echo "-> Set 'connectivityCheck: true' in addon config.yml"
    sed -i 's/connectivityCheck: false/connectivityCheck: true/' /config/config.yml
fi

# Instructions
echo -e "\nYou can edit your Homer dashboard at /addon_configs/2243a3f0_homer/config.yml\n"

echo "Starting webserver"
exec lighttpd -D -f /lighttpd.conf
