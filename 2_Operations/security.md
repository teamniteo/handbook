# Security Policy

## General Guidelines

* Do not store confidential or sensitive information in plain text.
* Do not store sensitive information with any of the big 10 cloud providers (MS, Google, Apple, Dropbox, etc.). Store information locally, on our internal infrastructure or with smaller providers (preferably non-US based).

## Passwords

* Every computer or device must have a login password or pin to secure access.
* Use random passwords with more than 16 characters.
* Do not use the same password more than once.
* All devices must be locked with a password when kept running and left somewhere, even if only for a few minutes.

### Password Manager

Use a password manager to store all other passwords so you do not need to remember them and the passwords can be more complex.

We recommend the following as good cross-platform options with browser extensions to securely log in to websites:
  * [1Password](https://1password.com)
  * [Enpass](https://www.enpass.io)
  * [KeePass](https://keepass.info)

The passwords stored in a password manager should be much longer randomly generated passwords with a combination of uppercase and lowercase letters, numbers, and symbols. Password managers will help generate and save these complex passwords for you.

 * Any passwords for company-wide access should be stored in the 1Password company account.

### Two-Factor Authentication (2FA)

Whenever possible enable 2FA (two-factor authentication) for logging into services.

* OTP (one-time-password) authentication application, e.g. Google Authenticator, is a really secure option.
* SMS authentication should be avoided, unless the only 2FA option, as it is vulnerable to attacks.
* [U2F](https://en.wikipedia.org/wiki/Universal_2nd_Factor) hardware token is the most secure, requiring a physical device e.g. Yubikey. Further details in [U2F explained](https://www.howtogeek.com/232314/u2f-explained-how-google-microsoft-and-others-are-creating-universal-two-factor-authentication-tokens/).


## VPN

We always use tunneling to access our internal servers from unknown networks to protect ourselves from traffic sniffing. All newer smartphones have some level of support for a VPN.


## Device Data Encryption

All data on your devices, without exceptions, needs to be encrypted on the fly. Encrypting just your user-folder is not enough, because some configurations and caches are still stored unencrypted and this presents a high-security risk in case the device is stolen.

* iPhone supports hardware level encryption of all your data, you just need to enable it.
* Android has full disk encryption from version 7.0+ and enabled by default.
* Linux users should use LUKS and SecureBoot.
* Windows users should use native BitLocker, [BestCrypt](https://www.jetico.com/data-encryption/encrypt-hard-drives-bestcrypt-volume-encryption) or open-source [Veracrypt](https://www.veracrypt.fr).
* Mac users should use native FileVault.


## Theft Control

In case one of our devices gets stolen, we need a way to do some theft control. The following theft control services allow you to trace the device and also do a complete remote wipe of it.

* Macs and iPhones users should enable [Find my iPhone](https://www.apple.com/icloud/find-my-iphone/).
* Android users automatically have [Find my device](https://support.google.com/accounts/answer/6160491?hl=en).
* Linux and Windows users can try [Prey](https://preyproject.com) or open-source [Pombo](https://github.com/BoboTiG/pombo).


## Syncing

Syncing of data between the device and any other device/service needs to be performed securely. Syncing over USB, local wired or wireless network that is trusted is fine. Remember a coffee shop or other public wifi cannot be trusted.

Syncing through Dropbox, iCloud or Google Sync is *not* allowed as that would mean that all the data is stored unencrypted on their servers.


## Webservices

Always use HTTPS, under all circumstances, if the service does not support this, do not use it! You can use the [HTTPS-Everywhere](https://www.eff.org/https-everywhere) browser extension to ensure HTTPS versions of websites are used.


## Sharing Customer Data

Under no circumstances should you send any customer data unencrypted (that includes Slack!). Sharing customer data such as lists of email addresses can be done using either [Resilio or Signal](apps.md) so that no one else has access to these private details.

To share individual customer details, you can securely reference them by using their application ID or customer issue ticket (e.g., Intercom).

