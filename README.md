# config-notes
My linux configuration notes

## Install Obsidian on Linux
Better method: https://help.obsidian.md/Getting+started/Download+and+install+Obsidian

Use Flatpak
1.  Install flatpak `sudo apt install flatpak`
2.  Check version to make sure it is installed `flatpak --version`
3.  Enable Flathub to search apps from command line `flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
4.  Search is done by `flatpak search <app_name>`
5.  Check the Application ID and run the installation with the application ID. I found it easier than choosing the right name. `flatpak install <app-id>`

Then I went on to look for Obsidian from Flathub.

1.  Search Obsidian: `flatpak search obsidian`
2.  Look for _md.obsidian.Obsidian_ application ID `flatpak install md.obsidian.Obsidian`

After system restart Obsidian showed up in the application launcher.


## Oh-my-zsh & Powerlevel10k

* LSD (colorizes you permissions): https://github.com/Peltoche/lsd
* Install Oh-My-ZSH https://ohmyz.sh/
* Install Powerline10k (optional) https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k


Edit the .p10k.zsh file and uncomment vpn_ip to include this information in your terminal prompt as well search for this line `typeset -g POWERLEVEL9K_VPN_IP_CONTENT_EXPANSION=' and comment it out

Oh-my-zsh plugins
```shell
plugins=(git nmap copypath zsh-pentest web-search zsh-autosuggestions quiver)
```
To install the plugin for zsh-autosuggestions you need to navigate to the `~/.oh-my-zsh/custom/plugins` folder the clone the repo `git clone https://github.com/zsh-users/zsh-autosuggestions`.   


### Installing Kali Repos on another distro
#### Setup
Ensure you have the su access
```shell
sudo passwd
```

Set a su password

Enter the password you just setup

Add the repo to the sources.list

Link: https://www.kali.org/docs/general-use/kali-linux-sources-list-repositories/

```shell
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" | sudo tee /etc/apt/sources.list
```

Now perform an apt update and you will get an error (example):
```shell
# you will get an error but you need to pull the key value
sudo apt update

Hit:13 http://apt.pop-os.org/ubuntu jammy-backports InRelease
Get:11 http://kali.download/kali kali-rolling InRelease [30.6 kB]
Err:11 http://kali.download/kali kali-rolling InRelease
  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY ED444FF07D8D0BF6
Reading package lists... Done

```

Now switch to root

```shell
# use the password you set up above
sudo root
```

Now execute this as root
```shell
gpg --keyserver keyserver.ubuntu.com --recv-key ED444FF07D8D0BF6
```


```shell
gpg -a --export ED444FF07D8D0BF6 | apt-key add -
```


Link to Repo's and batch tool installs: https://www.kali.org/tools/kali-meta/
https://www.kali.org/docs/general-use/metapackages/

```shell
# May Be Required
sudo apt install -f libgs-common
sudo apt install kali-desktop-kde

# Breaks Debian KDE if done alone need to do the step above
sudo apt install kali-linux-headless kali-tools-exploitation kali-tools-forensics kali-tools-fuzzing kali-tools-information-gathering kali-tools-passwords kali-tools-post-exploitation kali-tools-sniffing-spoofing kali-tools-top10 kali-tools-web
```


## Install Fonts - Eye Candy
1. Create a folder : `~/.local/share/fonts`  for all users `/usr/local/share/fonts`
2. Copy Fonts to this folder `Use rsync -a <src> ~/.local/share/fonts to copy the files over`
3. Rebuild the font cache: `fc-cache -f -v`
