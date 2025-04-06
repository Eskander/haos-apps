# Homer Dashboard Add-on for Home Assistant  

## How to Use  
To add Homer Dashboard to the Home Assistant sidebar, enable the "**Show in sidebar**" option.  

You can also access the web interface at `homeassistant.local:port` by setting a **port** in the **Configuration** tab.  

## Configuration  
The configuration directory is located at `/addon_configs/2243a3f0_homer/`.  

For configuration options, refer to the [Homer documentation](https://github.com/bastienwirtz/homer/blob/main/docs/configuration.md).  

## FAQ  

### *Network unreachable* error  
The `connectivityCheck` option causes issues with Home Assistant Ingress. Set it to `false` in the add-on configuration or `config.yml`.  

### How can I change the sidebar label or icon?  
Home Assistant does not support customizing an add-on's sidebar label or icon. As a workaround, create a new _Webpage_ dashboard pointing to `homeassistant.local:port`.  

## Support  
To report add-on bugs, [open an issue on GitHub](https://github.com/Eskander/ha-addon-homer/issues).  

For discussions, [visit the Home Assistant Forum](https://community.home-assistant.io/t/homer-dashboard-add-on-for-home-assistant/815430?u=eskander).
