# Home Assistant Add-on: Homer

## How to use
Enable "**Show in sidebar**" setting to add Homer Dashboard to Home Assistant sidebar.

The web interface can also be accessed on `homeassistant.local:port` by defining a **port** on **Configuration** tab.


## Configuration
Configuration directory is found in `/addon_configs/2243a3f0_homer/`

See [Homer documentation](https://github.com/bastienwirtz/homer/blob/main/docs/configuration.md) for configuration options.

## FAQ

#### Config option *connectivityCheck* always reset to *false*
Option `connectivityCheck` is automatically set to `false` in the add-on configuration file to ensure compatibility with Home Assistant Ingress.
Comment out the line in the add-on's `config.yml` to bypass the option reset.

#### How to change the label and/or icon in the sidebar?
Currently, Home Assistant does not offer an option to customize the label and icon of an add-on in the sidebar.
As a workaround, create a new _Webpage_ dashboard pointing to `homeassistant.local:port`

## Support
For add-on bug reports, [open an issue on GitHub](https://github.com/Eskander/ha-addon-homer/issues).
