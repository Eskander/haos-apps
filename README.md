# Homer Dashboard Add-on for Home Assistant

![Maintenance](https://img.shields.io/maintenance/yes/2025.svg)
![Build](https://img.shields.io/github/actions/workflow/status/Eskander/ha-addon-homer/.github/workflows/release.yml)
![AMD64 Support](https://img.shields.io/badge/amd64-yes-green.svg)
![AArch64 Support](https://img.shields.io/badge/aarch64-yes-green.svg)
![ARMv7 Support](https://img.shields.io/badge/armv7-yes-green.svg)
![Ingress](https://img.shields.io/badge/-ingress-blueviolet.svg?logo=cliqz&logoColor=white)
![Pulls](https://img.shields.io/badge/dynamic/json?url=https://gist.githubusercontent.com/Eskander/7bbbf38fce9710cb995f20defb9bd5a5/raw/package-stats.json&query=$.ha-addon-homer.total&label=Pulls)
![Installs](https://img.shields.io/badge/dynamic/json?url=https://analytics.home-assistant.io/addons.json&query=$["2243a3f0_homer"].total&label=Reported%20Installs)

## About

[Homer](https://github.com/bastienwirtz/homer) is a full static html/js dashboard, based on a simple yaml configuration file. 

This add-on installs Homer on [Home Assistant](https://www.home-assistant.io/addons/) to be used from the sidebar (*ingress*), or as a standalone dashboard (via *host:port*) for other services.

![screenshot](screenshot.png)

## Documentation

Add-on documentation is available [here](/homer/DOCS.md).

For information about configuration options (`config.yml`), see Homer [documentation](https://github.com/bastienwirtz/homer/blob/main/docs/configuration.md).

## Install

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https://github.com/Eskander/ha-addon-homer)
