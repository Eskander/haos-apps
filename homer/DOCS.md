# Home Assistant Add-on: Homer

## How to use
Set "*Show in sidebar*" setting (found on **Info** tab) to "*on*" to add Homer to Home Assistant sidebar.

You can also access Homer dashboard on `homeassistant.local:port` by defining a **port** on **Configuration** tab.

## Configuration
Configuration file in found on `/addon_configs/2243a3f0_homer/config.yml`

See Homer [documentation](https://github.com/bastienwirtz/homer/blob/main/docs/configuration.md) for information about the configuration options.

## FAQ

#### How to change label and/or icon on the sidebar?
Currently, Home Assistant does not offer an option to change the label and icon of an add-on on the sidebar. As a workaround:
- Set "*Show in sidebar*" setting to "*on*".
- [Remove Homer from the sidebar.](https://www.home-assistant.io/blog/2020/09/17/release-115/#customize-the-sidebar)
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
Option `connectivityCheck` is automatically set to `false` in the add-on configuration file to make Homer work with Home Assistant Ingress. You can move its location in `config.yml` but not remove it or change its value.

## Support
For bug reports, [open an issue on GitHub](https://github.com/Eskander/ha-addon-homer/issues).
