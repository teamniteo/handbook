# Apps We Use

## Slack

Join the channels `#operations`, `#watercooler`, `#out-of-office`, and any other channels that you find interesting. Our default mode of operation is to use public channels for all communication. Yes, sometimes you want to discuss something in person, or bounce an idea off of someone before writing to a public channel, and that's perfectly fine. Chit chat and personal things, keep them private too.

However, questions such as "where can I find X", "how do I do Y" and "what is Z" should be posted into public channels. Since more Niteans can chip in you will get your answer faster.

If you are on the receiving end of a question or message, that should really be posted in a public channel, reply with the following: `Hey! Let's take this to one of our public channels, so others can learn or chip in. I'll re-post and reply there.`.

Here is how we set reminders for daily standups in Slack:

```
/remind #ebn "@here Standup in 10 minutes! Join zoom.us/j/xxx early and say Hi! Write an #out-of-office message if not attending." at 9:50 every weekday
/remind #ebn "@here Standup starting now!" at 9:59 every weekday
```

#### Channels

Slack channels are separated into company-level and project-level channels. Projects start as discussions and ideas in company-level channels. When development and research takes off, projects get pushed into their own `#<project>` channel. Later on, when they start getting the first customers the project gets two more channels, `#<project>-dev` and `#<project>-support`, while the general discussions about the project are kept in `#<project>`. When the project grows even more, it gets even more specific channels. Click on the `Channels` heading in Slack's sidebar to see the list of active channels and their descriptions.

How to know which channel to write to? Write to the most specific channel. If your topic does not have a dedicated channel, bubble up to the "parent" channel. Example:
* I want to ask something about WooCart's codebase. WooCart does not (yet) have the `#woocart-dev` channel, so I "bubble up" to `#woocart` channel.
* I want to share an implementation idea for [Docsy](http://docsy.org/). Docsy does not (yet) have the `#docsy` channel, so I "bubble up" to `#development` channel.


#### Slack is Insecure Messaging

Although we use Slack for our day-to-day communication, it is not a fully secure messaging system, since the messages are stored and accessible on their servers. Therefore do not transfer passwords, keys or confidential information using Slack. Instead use Signal which is secured with end-to-end encryption.

#### Decreasing Distractions

Slack can be a [big distraction](https://m.signalvnoise.com/is-group-chat-making-you-sweat-744659addf7d) especially if you're always receiving notifications or checking for replies. 

There are settings you can change to decrease distractions. In the Slack app, click on Niteo on top and go to Preferences. Notifications settings will open and these are the recommended settings:

- **Notify me about**: choose `Direct messages, mentions & keywords`. If you still get too many pings, try using `Nothing`. Uncheck `Notify me about replies to threads I'm following`.
- **Sound & appearance**: check `Mute all sounds from Slack`, audio pings are extremely distracting. Uncheck `Bounce Slack's icon when receiving a notification`, another really annoying distraction.

We encourage you to **quit Slack** when you need time for undistracted work. Make sure that other Niteans that depend on your feedback know that you're away. But unless there's a fire, a few hours of uninterrupted work will only benefit everyone. 

You can also use the **bell icon** (Notifications) to disable all notifications for a specific time period. However, this still shows the number of received messages in the Slack app icon (which is a distraction in itself).


## Signal

[Signal](https://signal.org/) is a secure end-to-end encrypted (E2EE) messaging application. We use it for confidential messages that should not be sent via email or Slack. To start using Signal you will require an Android phone or iPhone and a working phone number.

#### Usage

Signal is to be used primarily for sending confidential information that must never be shared over Slack, and timely instant messaging at conferences and IRLs. All other instant messaging should remain on Slack.

## VPN

We use NordVPN to securely tunnel Internet traffic when we are not on our home network.

#### Usage

1. Go to https://nordvpn.com and install their app. It works both on desktop and mobile devices.
1. Login with your @niteo.co NordVPN credentials.
1. Under Dedicated IP section in the dropdown menu click ..., open Servers tab and click "heart" icon for our German Dedicated Server.
1. Do the same for our US Dedicated Server.
1. Connect to one or the other to get access to our protected services.
1. For private use like torrenting, make sure you are using one of the shared servers that NordVPN provides, and not our two dedicated servers.

If you're connected to the VPN, you put your computer to sleep and then relocate (i.e. you connect to a different WiFi), you will need to reconnect to the same VPN server for the internet to work.

#### MacOS specifics

The NordVPN MacOS app that comes from the App Store does not support connecting to Dedicated Servers. You need to use their "OpenVPN" app.

#### iOS specifics

The NordVPN iOS app does not support connecting to Dedicated Servers so you won't have access to our protected services on your phone.

However, since NordVPN uses OpenVPN under the hood, there is a neat workaround:

1. Follow https://support.nordvpn.com/Connectivity/iOS/1086536932/Manual-OpenVPN-connection-setup-on-iPad-iPhone.htm to install the OpenVPN app.
1. Open https://nordvpn.com/ovpn/ with your phone, scroll down to our German server and click Download UDP.
1. Do the same for TCP.
1. Now do both for our US server.
1. Profit!

#### Linux CLI

1. Follow https://nordvpn.com/tutorials/linux/application/
1. ```nordvpn c de545``` or ```nordvpn c Germany/Dedicated_IP``` for server in Germany.
1. ```nordvpn c us2928``` or ```nordvpn c United_States/Dedicated_IP``` for server in US.

### Linux with Network Manager (Gnome, KDE)

1. Follow https://nordvpn.com/tutorials/linux/openvpn/
1. Import UDP or TCP profile **de545** for Germany.
1. Import UDP or TCP profile **us2928** for United States.

## Resilio

Resilio is a secure BitTorrent-based Dropbox-like service for teams.


#### Limitations

* Trialists get access to files on a need-to-have basis. Their mentor opens up Resilio, clicks the plus icon and selects `Share file` to share a file with the trialist.
* Up to 143 characters for filenames: We use Synology NAS devices to act as always-online peers. The data on these devices is stored on encrypted volumes. These volumes have a limit of up to 143 characters filenames.
* No sharing files with anyone that does not have Resilio installed.
* Syncing speeds to people outside of Europe is not great, since the vast majority of peers (including always online peers Somnus and Morpheus) are located in Europe.

## Internal Stack Overflow
We use **Stack Overflow for Teams** for knowledge management. It can be used for technical inquiries as well as questions related to the company or projects.

### Usage:
#### Search:
* It's always a good idea to search for the questions you have in the [Internal Stack Overflow](https://stackoverflow.com/c/niteo/questions) before posting it on Slack or GitHub to avoid wasting other Niteans' time. 

* To search for a topic or a question you can either visit our [Internal Stack Overflow](https://stackoverflow.com/c/niteo/questions) or search from Slack: `/stack search <keywords>`

Example:
`/stack search good resources to learn nix` will give results of all the relevent questions.

#### Post a Question
Before posting a question:
  * Check if a similar question has already been asked.
  * Make sure that the question is relevant to the company.

To post a question you can either visit the [Internal Stack Overflow](https://stackoverflow.com/c/niteo/questions/ask) or ask the Stack Overflow bot in Slack to make a draft of the question.

To make a draft of the question in Slack, click the `actions` button on the message you want to post and choose `Ask on Teams`.

> Note: Make sure to apply relevant tags to the question to improve searchability.

#### Answering a question
While answering a question:
  * Be specific and accurate. To give more information, provide a link to the source.

You can answer the questions by visiting [Internal Stack Overflow](https://stackoverflow.com/c/niteo/questions)
