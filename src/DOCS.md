# Home Assistant Add-on: Homer

## How to use
Enable "**Show in sidebar**" setting to add Homer Dashboard to Home Assistant sidebar.

The web interface can also be accessed on `homeassistant.local:port` by defining a **port** on **Configuration** tab.


## Configuration
Configuration directory is found in `/addon_configs/2243a3f0_homer/`

See [Homer documentation](https://github.com/bastienwirtz/homer/blob/main/docs/configuration.md) for configuration options.

## FAQ

#### How to change the label and/or icon in the sidebar?
Currently, Home Assistant does not offer an option to change the label and icon of an add-on in the sidebar.

As a workaround:
- Enable "**Show in sidebar**" setting.
- [Hide Homer from the sidebar.](https://www.home-assistant.io/blog/2020/09/17/release-115/#customize-the-sidebar)
- Add the following block to your Home Assistant `configuration.yaml` and make changes accordingly:
  ```
  panel_custom:
    - name: homer
      sidebar_title: Homer
      sidebar_icon: mdi:server
      js_url: /api/hassio/app/entrypoint.js
      url_path: "2243a3f0_homer/ingress"
      embed_iframe: true
  ```

#### Why is *connectivityCheck* always set to *false*?
Option `connectivityCheck` is automatically set to `false` in the add-on configuration file to make Homer work with Home Assistant Ingress. You can comment out the line in `config.yml` to bypass this behavior.

## Support
For add-on bug reports, [open an issue on GitHub](https://github.com/Eskander/ha-addon-homer/issues).
