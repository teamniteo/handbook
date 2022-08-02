# Apps We Use

## Slack

Join the channels `#operations`, `#watercooler`, `#out-of-office`, and any other channels you find interesting. Our default mode of operation is to use public channels for all communication. The only things to be discussed in private are off-work chit-chat, constructive criticism, and planning one-on-one meetings.

We found that a lot of discussions, even work-related, naturally flow into private channels, so it requires a bit of focus to keep them public, so everyone sees what's going on.

If you are on the receiving end of a question or message that should really be posted on a public channel, reply with the following: `Hey! Let's take this to one of our public channels so that others can learn or chip in. I'll re-post and reply there.`.

Here is how we set reminders for daily standups in Slack:

```
Set up reminders on the week they should be posted before reminder post time.

Sprint planning / sprint retro week:
/remind #operations every two weeks on Tuesday at 8:00 UTC "@here Reminder that stories need to be closed an hour before retro starts."
/remind #operations every two weeks on Tuesday at 11:50 UTC "Sprint retrospective in 10 minutes!"
/remind #operations every two weeks on Tuesday at 11:59 UTC "@here Sprint retrospective starting now!"
/remind #operations every two weeks on Wednesday at 10:50 UTC "@here Add your stories to the To Do pipeline."
/remind #operations every two weeks on Wednesday at 11:50 UTC "Sprint planning in 10 minutes!"
/remind #operations every two weeks on Wednesday at 11:59 UTC "@here Sprint planning starting now!"

Second week of the sprint:
/remind #operations every two weeks on Thursday at 11:50 UTC “Standup in 10 minutes! Join the appropriate Zoom room or write an #out-of-office message if not attending”
/remind #operations every two weeks on Thursday at 11:59 UTC “@here Standup starting now!”

Weekly:
/remind #operations every Monday at 11:50 UTC “Standup in 10 minutes! Join the appropriate Zoom room or write an #out-of-office message if not attending”
/remind #operations every Monday at 11:59 UTC “@here Standup starting now!”
```

#### Channels

Slack channels are separated into company-level and project-level channels. Projects start as discussions and ideas in company-level channels. When development and research take off, projects get pushed into their own `#<project>` channel. Later on, when they start getting the first customers, the project gets two more channels, `#<project>-dev` and `#<project>-support`, while the general discussions about the project are kept in `#<project>`. When the project grows even more, it gets even more specific channels. Click on the `Channels` heading in Slack's sidebar to see the list of active channels and their descriptions.

How to know which channel to write to? Write to the most specific channel. If your topic does not have a dedicated channel, bubble up to the "parent" channel. Example:
* I want to ask something about Pareto's codebase. Pareto does not (yet) have the `#pareto-dev` channel, so I "bubble up" to `#pareto` channel.
* I want to share an implementation idea for one of our project ideas. As it does not (yet) have its own channel, I "bubble up" to `#development` channel.

#### Decreasing Distractions

Slack can be a [big distraction](https://m.signalvnoise.com/is-group-chat-making-you-sweat-744659addf7d), especially if you're constantly receiving notifications or checking for replies. 

There are settings you can change to decrease distractions. In the Slack app, click on Niteo on top and go to Preferences. Notifications settings will open, and these are the recommended settings:

- **Notify me about**: choose `Direct messages, mentions & keywords`. Uncheck `Notify me about replies to threads I'm following`. If you still get too many pings, try using `Nothing`. 
- **Sound & appearance**: check `Mute all sounds from Slack`, audio pings are extremely distracting. Uncheck `Bounce Slack's icon when receiving a notification`, another really annoying distraction. Unchecking `Include a preview of the message in each notification` will help you keep focus by notifying you of the message but not what it's about (where your brain automatically starts thinking about it). If you always need Slack empty of the red icon and click through everything to "clean it", uncheck `Show a badge on Mac on Slack's icon to indicate new activity`. 

We encourage you to **quit Slack** when you need time for undistracted work. Make sure that other Niteans that depend on your feedback know that you're away. But unless there's a fire, a few hours of uninterrupted work will only benefit everyone. 

You can also use the **bell icon** (Notifications) to disable all notifications for a specific time period. However, this still shows the number of received messages in the Slack app icon (which is a distraction in itself).


#### Slack is Unsecure Messaging

Although we use Slack for our day-to-day communication, it is not a fully secure messaging system since the messages are stored and accessible on their servers. Therefore do not transfer passwords, keys or confidential information using Slack. Instead, use Signal, which is secured with end-to-end encryption.

#### Other Slack tips

- Don't use naked pings, where you type "hey" and send, and only then start writing your message. A greeting is welcome, but keep it inside the main message.
- If you hover over any message, there is a ribbon you can use to save a message. You can use this if it's something you see referencing or needing it in the future.
- Use reminders to "snooze" a message. This is really beneficial for Friday messages where you can postpone it to first thing Monday.

## Signal

[Signal](https://signal.org/) is a secure end-to-end encrypted (E2EE) messaging application. We use it for confidential messages that should not be sent via email or Slack. To start using Signal, you will require an Android phone or iPhone and a working phone number.

#### Usage

Signal is to be used primarily for sending confidential information that must never be shared over Slack, and timely instant messaging at conferences and IRLs. All other instant messaging should remain on Slack.

## VPN

We use NordVPN Teams to securely tunnel Internet traffic when we are not on our home network.

#### Usage

1. Go to https://nordvpnteams.com/download/ and install their app. It works on both desktop and mobile.
1. See your invitation email for the link to activate your account and get your login credentials.
1. Open the app and connect to `niteo` under `Organization gateways`.
- For private use like torrenting, make sure you are using one of the shared servers that NordVPN provides and not our organization gateway.
- If you're connected to the VPN, put your computer to sleep, and then relocate (i.e. you connect to a different WiFi), you will need to reconnect to the same VPN server for the internet to work.

#### Linux (OpenVPN)
For Linux, you have to ask one of the [partners](https://github.com/orgs/teamniteo/teams/partners) to get the required files for you.

Partner:
  - As an admin, go to https://cp.nordvpnteams.com/downloads.
  - Under Manual configuration, select the team member, the correct gateway, and download the `OpenVPN UDP config`.
  - Copy the username and password.

Nitean:
  - For a Debian-based system, go to Settings > Network and select `Import a saved VPN configuration` under VPN, point to the `.ovpn` file, and fill out the username and password.
  - For other systems, you can refer to the distribution manual for instructions.

## Resilio

Resilio is a secure BitTorrent-based Dropbox-like service for teams.


#### Limitations

* Trialists get access to files on a need-to-have basis. Their mentor opens up Resilio, clicks the plus icon, and selects `Share file` to share a file with the trialist.
* Up to 143 characters for filenames: We use Synology NAS devices to act as always-online peers. The data on these devices is stored on encrypted volumes. These volumes have a limit of up to 143 characters filenames.
* No sharing files with anyone that does not have Resilio installed.
* Syncing speeds to people outside of Europe is not great since the vast majority of peers (including always online peers Somnus and Morpheus) are located in Europe.
