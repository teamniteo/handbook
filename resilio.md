# Resilio

Resilio is a secure BitTorrent-based Dropbox-like service for teams. The biggest advantage of Resilio over Dropbox is that it uses a peer-to-peer protocol to keep files in sync. This means two benefits:
* Our data is not stored in the cloud, but only on our own devices.
* If two devices are in the same physical location, for example in our office or during IRLs, the data is synced via the local network which is vastly faster, especially on slow Internet connections that can happen on IRLs.

Every Nitean needs to install Resilio on their machines so they can access our shared files. Go to https://www.resilio.com/individuals, click `Free Download` and `Download Sync Business`. When the installation is complete, you need to enter our License key on `Settings` -> `License`. Ask @zupo to generate a License Link for you.

Now, one of the Partners needs to share the `Niteo` folder with you. They do this by opening up Resilio and clicking the `Share` button for the `Niteo` folder and sending you the `Read & Write` link . When you click the link, Resilio should start up and add the shared folder to your device. If this does not happen, open Resilio and click the plus icon to manually enter the link.

It is important the you turn `Selective Sync` ON. This tells Resilio to only download filenames to your machine, without the actual data, to save disk space. When you then try to open any of these empty files in your file manager (Finder, Explorer, etc.), Resilio will download the data and start keeping the file in sync. On Linux, you have to go to Resilio's local Web UI to select which files you want to keep synced to your local machine.


## Trialists

Trialists get access to files on a need-to-have basis. Their mentor opens up Resilio, clicks the plus icon and selects
`Share file` to share a file with the trialist.


## Additional Folders

Besides the `Niteo` folder, there are two more folders:
* `NiteoPartners`: A store of sensitive documents, only Partners have access. Also an archive of all old projects & documents. Has the same folder structure as Intra, plus Archive (with the same substructure).
* `NiteoFounders`: A few very sensitive files, such as encryption keys, that max 2 people should have access to. Has the same folder structure as Intra.
* `Horus`: This is a `1_Projets/Kai/Horus` subfolder inside the `Niteo` folder that is it's own Resilio Share. AI servers (Horus, Osiris, Anubis) run Resilio and sync contents of the `Horus` folder to `/resilio` directories on their disks. This is used to share AI models between AI servers and researchers.


## Always-online Peers

Resilio is a peer-to-peer protocol, based on BitTorrent. This means that if no Niteans are online, you have no-one to sync data with. With Dropbox, you always sync into the cloud, even if you are the only team member currently online.

To work around this limitation, we run two peers that are always online. One is our Somnus archive server, the other is
Morpheus (the son of Somnus) which is only a Resilio peer. These peers have Selective Sync turned OFF, so they keep a copy of all data we have in Resilio, so even if we lose one, all data is replicated on the other (besides on our laptops). For security purposes, Somnus and Morpheus are located in separate physical locations.


## Limitations

* Up to 143 characters for filenames: We use Synology NAS devices to act as always-online peers. The data on these devices is stored on encrypted volumes. These volumes have a limit of up to 143 characters filenames.
* No sharing files with anyone that does not have Resilio installed.
* Syncing speeds to people outside of Europe is not great, since the vast majority of peers (including always online peers Somnus and Morpheus) are located in Europe.
