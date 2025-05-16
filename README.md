# xcl-builder
Pull, build, and deploy X-Change Life onto your local server!

Well... that's great and all, but what's it *do?*
Running the install script on any debian based system (tested on Ubuntu Server 24.04) will check to ensure you have a few prerequisites installed:
- git
- git-lfs
- 7zip
- apache2
- nvm and npm (Node.js)
It will update (and upgrade) before installing (if not already present) the above, then proceed to download Tweego. By installing Apache2, a server will be setup and running now. More on that later. The script will make a working directory, where it will clone X-Change Life from Git, and copy the Tweego file in to it.
#Downloading will take some time!
And some space. So ensure you have atleast 20GB free in your /home and 20GB free in /var
Once all is done, it will ensure the correct permissions are applied, everything is executable, and download the update script from this repo

## Update Script
When running update.sh from ~/xcl-git/xchange-life/ it will fetch the latest code, and then LFS pull, incase any media was updated/added. It will then inject code into the metadata.twee to display that this is a Git build, and it's compile date. The script will also edit the package.json to use the Tweego file in the folder, rather than "Tweego" as an executable, because, I'm not sure where else it's supposed to find it other than right infront of it's eyes. After the tweaks, it will build, and copy your "img" and "aud" folders and index.html (and anything else in the /dist folder) to your Apache's web folder (by default /var/www/html/) and depending on your hardware, this can take anywhere from 10 minutes, to 1-3 business days. It's probably a good time to make a coffee. I use rsync here to show progress, so you atleast know what's happening and that things are copying. Once it's done, you can head to your device's internal IP address using a web browser on any device on your network, for example; XCL is hosted on 192.168.1.69 (nice) and you have a Chromebook connected to your home wifi. You can navigate to http://192.168.1.69 in your URL bar, and you will see your brand new X-Change Life roaring and ready to go!

## What's next?
Mods:
Having a local server run a modded XCL means devices like tablets, phones, Kindles, and LG Smart Fridges can enjoy Lulu Chu as much as I do. These devices aren't exactly able to run the modloader like our computers can, so having an already compiled modded game would be extremely helpful!

Stable Version:
Having the latest release build, rather than a WIP git pull that may or may not be completely fucked is a great idea for those who just wanna get up and go. "But isn't this just [the website](https://x-change.life/)?" Yes. But in certain scenarios, people don't, or can't, depend on streaming these video files via the internet
- Regional areas
- ISP outages
- Australian internet
- #VanLyf
and plenty of other reasons why a maintained internet connection consuming so much data isn't great, like capped internet plans. Yes, they still exist. Or perhaps mobile data as you plan on your laptop somewhere away from home.

Mods...again:
Stable version with mods (or in other words, anyone who downloads the game instead of playing on the website) but, like mentioned in the above mods section; using any device you like that's capable, rather than depending on a computer.

## For those who dare
I don't mean ROG, I mean port forwarding or VPN usage. If you have a modded game on your local server and want to enjoy Lulu on your holiday to Fiji, then being able to type in http://rand.ip.here.123/ into your browser and be connected to your home server is great!... except for the massive security risk of rawdogging open ports. But if you couldn't care less about hackers seeing your porn, then go for gold I guess... but I'd recommend setting up a VPN for you to "phone home" safely. There's plenty of tutorials online on how to set that up on a debian based system, like the one you're using for this
