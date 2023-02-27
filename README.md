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
*Install LSD*
LSD (colorizes you permissions): https://github.com/Peltoche/lsd


Edit the .p10k.zsh file and uncomment vpn_ip to include this information in your terminal prompt

Oh-my-zsh plugins
```shell
plugins=(git nmap copypath zsh-pentest web-search zsh-autosuggestions quiver)
```
