# Security policy

## General Guidelines

* Do not store sensitive information in plain text.
* Do not store sensitive information with any of the "big 10" cloud providers (MS, Google, Apple, Dropbox, etc.). Store information locally, on our internal infrastructure or with smaller providers (possibly non-US based).

## Passwords

### Computer Passwords

* All computers must have a login password.
* All computers must be locked with a password when kept running and left somewhere, even if only for a few minutes. 

### Web Application Passwords

* Use random passwords with more than 10 characters.
* Never use the same password more than once.
* Use a password manager to store passwords (1Password, LastPass, KeePass, etc.).
* Store password for company access to 1Password team account.

## VPN

We always use tunneling to access our internal servers from unknown networks to protect ourselves from traffic sniffing. All newer smart phones have some level of support for a VPN.

## Encryption

All data, without exceptions, needs to be encrypted on the fly. Encrypting just your user-folder is not enough, because some configurations and caches are still stored unencrypted and this presents a high security risk in case the device is stolen.

* iPhone supports hardware level encryption of all your data, you just need to enable it.
* Android has full disk encryption from version 7.0+ and enabled by default.
* Linux users should use LUKS and SecureBoot.
* Windows users should use native BitLocker.
* Mac (Lion and newer) users should use native FileVault.

## Theft Control

In case shit hits the fan and one of our devices gets stolen, we need a way to do some theft control.

* Macbooks and iPhones have that built-in. You can trace the device and also do a complete remote wipe of it.
* Linux laptops and Android phones get theft control with Preyproject.org.

## Syncing

Syncing of data between the device and any other device/service needs to be performed in a secure manner. Syncing over USB or local Wireless network is fine. Syncing through Dropbox, iCloud or Google Sync is *not* allowed as that would mean that all data is stored unencrypted at Dropbox/Apple/Google. 

## Webservices

Always, under all circumstances use SSL/TLS. If the service does not support SSL/TLS, do not even start using it!
