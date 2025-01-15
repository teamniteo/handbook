# Apps We Use

## Kagi Search

Kagi is a great replacement for Google. It respects your privacy because it is a paid service. Its results are better because there are no sponsorsed links. It's fully configurable and it has [Lenses](https://help.kagi.com/kagi/features/lenses.html).

Ping @zupo to get an invite link, then download their extension to plug it into your browser. 

## Slack

Join the channels `#operations`, `#watercooler`, `#out-of-office`, and any other channels you find interesting. Our default mode of operation is to use public channels for all communication. The only things to be discussed in private are off-work chit-chat, constructive criticism, and planning one-on-one meetings.

We found that a lot of discussions, even work-related, naturally flow into private channels, so it requires a bit of focus to keep them public, so everyone sees what's going on.

If you are on the receiving end of a question or message that should really be posted on a public channel, reply with the following: `Hey! Let's take this to one of our public channels so that others can learn or chip in. I'll re-post and reply there.`.

Here is how we set reminders for meetings in Slack:

```
Set up reminders on the week they should be posted before reminder post time.

Weekly:
/remind #operations every Monday at 11:50 UTC “Meeting in 10 minutes! Join the appropriate Slack's huddle or write an #out-of-office message if not attending”
/remind #operations every Monday at 11:59 UTC “@here Meeting starting now!”
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

We use WireGuard to securely tunnel Internet traffic and allow access to certain resources when we are not on our home network.

#### Usage

1. Go to https://www.wireguard.com/install/ and install the app. It works on both desktop and mobile.
1. Find or add your device in the [VPNix repo](https://github.com/teamniteo/vpnix/tree/main/nitean-devices) and download the `.conf` file for desktop or display the `.png` file for mobile. We have multiple regions so make sure you select the one closest to you. E.g. `VPNix-de-...` for Europe or `VPNix-us-...` for the Americas.
1. Open up the WireGuard app and click on `Import Tunnel(s) from File...` on desktop or tap on `Create from QR code` on mobile.
1. Activate the VPN connection and you're good to go!

Note that you can only have one active connection per configuration at a time so make sure you add all your devices to [this file](https://github.com/teamniteo/vpnix/blob/main/nitean-devices/nitean-devices.yaml) to get unique configuration files per device.

#### Linux
For NixOS, see the documentation in the [VPNix repo's readme file](https://github.com/teamniteo/vpnix/blob/main/README.md#nixos). For other Linux distros, please refer to the [wg-quick documentation](https://git.zx2c4.com/wireguard-tools/about/src/man/wg-quick.8).


## Dropbox

Dropbox is one of the best file sharing services out there. We have a Business account that gives us terabytes of data.

For nicer search experience using Alfred on macOS:
  * Add `~/Library/CloudStorage/Dropbox/Niteans` to `Search Scope` under `Default Results` configuration pane.
  * Add `~/home/<user>/Niteo Dropbox/Niteans` to `Prevent Spotlight from searching these locations:`.


## AI

We can't imagine modern tech world without the help of various AI tools. The list below is the base of what every Nitean should have installed and integrated into their daily work, but is in no way a definitive list; if you finds something else that works for you, by all means, use it! 

#### GitHub Copilot

Not the sharpest AI model, but the best integrated one. Especially when using VSCode, it gently suggest code and even text, math solutions in Markdown files on-the-fly, as you write. "Free" productivity gain, no need to change your habits at all. 

Sign up at https://github.com/features/copilot/plans and mark the expense as your [Productivity Allowance](https://github.com/teamniteo/handbook/blob/main/5_People/benefits.md#productivity-allowance).

Make sure you untick `Allow GitHub to use my code snippets from the code editor for product improvements` on https://github.com/settings/copilot.

#### ChatGPT

We have a company account for OpenAI's ChatGPT, find the credentials in 1Password.

Top tip: there is no need for a personal account, you can use the [Temporary Chat](https://help.openai.com/en/articles/8914046-temporary-chat-faq) feature to ask for personal/stupid/non-work stuff. It is actually better to use the company account since we pay for the most expensive model. 

### ClaudeAI

Another popular chat model, which we also have a company account for. To log in, find the username in 1Password, then go to #mail-to-slack to receive the login link. 
