# OpenVPN

We use OpenVPN to securely tunnel internet traffic when connecting to
our projects or internal services.

## Installation

#### MacOS
  * [Tunnelblick] desktop application.

#### Ubuntu
  * OpenVPN and network plugin, `apt install network-manager-openvpn-gnome`

#### Windows
  * OpenVPN desktop client from [OpenVPN downloads].

## Import configuration

Instructions for importing the `.ovpn` configuration files.

#### MacOS and Windows
  * Double-click on an `.ovpn` file and follow the instructions.

#### Ubuntu
  1. Choose `Edit connections` from Network indicator.
  1. Click `Add` then at the end of the list choose to `Import a saved VPN config` and locate the `.opvn` file to import.
  1. The new VPN should be available in the network indicator under `VPN Connections`.

#### Command line
  * To test or manually run openvpn with a config file:

    `openvpn --config eu.ovpn`


[OpenVPN downloads]: https://openvpn.net/index.php/open-source/downloads.html
[Tunnelblick]: https://tunnelblick.net/
