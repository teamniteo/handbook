# Apps We Use

## Slack

To start using Slack you will need to [sign up](https://join.slack.com/niteo/signup) to the company workspace using your `@niteo.co` email address. It is recommended that you install the [Slack app](https://slack.com/download) on your desktop and your phone so that you do not miss out on any messages directed to you or other informative communication. Please fill in your [Slack profile](https://niteo.slack.com/account/profile) with your details and ensure that the display name matches your GitHub handle and the Profile photo displays your full face.

Once you're joined, join the channels `#operations`, `#watercooler`, `#out-of-office`, and any other channels that you find interesting.

#### Private vs. Public

Our default mode of operation is to use public channels for all communication. Yes, sometimes you want to discuss something in person, or bounce an idea off of someone before writing to a public channel, and that's perfectly fine. Chit chat and  personal things, keep them private too.

However, questions such as "where can I find X", "how do I do Y" and "what is Z" should be posted into public channels. Since more Niteans can chip in you will get your answer faster.

If you are on the receiving end of a question or message, that should really be posted in a public channel, reply with the following: `Hey! Let's take this to one of our public channels, so others can learn or chip in. I'll re-post and reply there.`. 

#### Channels

Slack channels are separated into company-level and project-level channels. Projects start as discussions and ideas in company-level channels. When development and research takes off, projects get pushed into their own `#<project>` channel. Later on, when they start getting the first customers the project gets two more channels, `#<project>-dev` and `#<project>-support`, while the general discussions about the project are kept in `#<project>`. When the project grows even more, it gets even more specific channels. Click on the `Channels` heading in Slack's sidebar to see the list of active channels and their descriptions.

How to know which channel to write to? Write to the most specific channel. If your topic does not have a dedicated channel, bubble up to the "parent" channel. Example:
* I want to ask something about WooCart's codebase. WooCart does not (yet) have the `#woocart-dev` channel, so I "bubble up" to `#woocart` channel.
* I want to share an implementation idea for [Docsy](http://docsy.org/). Docsy does not (yet) have the `#docsy` channel, so I "bubble up" to `#development` channel.


#### Slack is Insecure Messaging

Although we use Slack for our day-to-day communication, it is not a fully secure messaging system, since the messages are stored and accessible on their servers. Therefore do not transfer passwords, keys or confidential information using Slack. Instead use Signal which is secured with end-to-end encryption.

#### Do Not Disturb

Slack can be a [big distraction](https://m.signalvnoise.com/is-group-chat-making-you-sweat-744659addf7d) especially if you're always receiving notifications or checking for replies. When you need time for undistracted work we encourage you to Snooze notifications for a preset period or quit Slack. Make sure that other Niteans that depend on your feedback know that you're away.

## Signal

[Signal](https://signal.org/) is a secure end-to-end encrypted (E2EE) messaging application. We use it for confidential messages that should not be sent via email or Slack. To start using Signal you will require an Android phone or iPhone and a working phone number.

#### Usage

Signal is to be used primarily for sending confidential information that must never be shared over Slack, and timely instant messaging at conferences and IRLs. All other instant messaging should remain on Slack.

#### Niteo Group Chat

We have a Niteo group chat on Signal and you will need to be invited to join it. Please send your Signal phone number to someone in [PeopleOps](https://github.com/orgs/niteoweb/teams/peopleops) and they will add you to the group.

## OpenVPN

We use OpenVPN to securely tunnel internet traffic when connecting to our projects or internal services.

#### Installation

* **MacOS:** [Tunnelblick](https://tunnelblick.net/) desktop application.
* **Ubuntu:** OpenVPN and network plugin, `apt install network-manager-openvpn-gnome`
* **Windows:** OpenVPN desktop client from [OpenVPN downloads](https://openvpn.net/index.php/open-source/downloads.html).


#### Configuration

Ask @zupo to create and send your personal OpenVPN configuration files.

##### Import configuration files:

* **MacOS and Windows:** Double-click on an `.ovpn` file and follow the instructions.
* **Ubuntu:**
  * Choose `Edit connections` from Network indicator.
  * Click `Add` then at the end of the list choose to `Import a saved VPN config` and locate the `.opvn` file to import.
  * The new VPN should be available in the network indicator under `VPN Connections`.
* **Command line:** To test or manually run OpenVPN with a config file: `openvpn --config eu.ovpn`


##### Test Niteo VPN connection

You can test that the Niteo VPN works correctly by visiting [Docs](http://docs.niteo.co/) or [Intra](https://intra.niteo.co
). Without a VPN connection or a whitelisted IP, internal Niteo sites will default to *403 Forbidden*.

## Resilio

Resilio is a secure BitTorrent-based Dropbox-like service for teams.

#### Installation and Configuration

* Go to the [Resilio download page](https://www.resilio.com/individuals), click `Free Download` and `Download Sync Business`.
* Enter our License key on `Settings` -> `License`. Ask @zupo to generate a License Link for you.
* One of the Partners needs to share the `Niteo` folder with you. They do this by opening up Resilio and clicking the `Share` button for the `Niteo` folder and sending you the `Read & Write` link .
* When you click the link, Resilio should start up and add the shared folder to your device. If this does not happen, open Resilio and click the plus icon to manually enter the link.
* It is important that the you turn `Selective Sync` ON. This tells Resilio to only download filenames to your machine, without the actual data, to save disk space.


#### Limitations

* Trialists get access to files on a need-to-have basis. Their mentor opens up Resilio, clicks the plus icon and selects `Share file` to share a file with the trialist.
* Up to 143 characters for filenames: We use Synology NAS devices to act as always-online peers. The data on these devices is stored on encrypted volumes. These volumes have a limit of up to 143 characters filenames.
* No sharing files with anyone that does not have Resilio installed.
* Syncing speeds to people outside of Europe is not great, since the vast majority of peers (including always online peers Somnus and Morpheus) are located in Europe.
