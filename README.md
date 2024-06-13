# dotenvs

#### Restart GUI in Ubuntu: ALT - F2, and type r (or restart)

#### Some configurations for MAC/Linux

- Shell environemnt: ZSH - Oh my ZSH - Powerlevel10k
(https://dev.to/christopherjael/como-personalizar-tu-terminal-utilizando-oh-my-zsh-con-powerlevel10k-4bdi)
- Just UBUNTU: Install kitty as shell emulator to allow font ligatures and copy kitty configuration.
  (https://atareao.es/podcast/kitty-el-mejor-terminal-para-linux/)
- Include fonts compatible with NVIM and Powerlevel10k (For Ubuntu FiraCode for Windows WSL or ArchLinux you can use fonts attached)
- Review aliases, configs and plugins in zshrc

#### Docker in Ubuntu

```
sudo apt update
sudo apt install qemu-kvm libvirt-daemon-system virtinst libvirt-clients
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo usermod -aG kvm $USER
sudo usermod -aG libvirt $USER
sudo apt remove docker docker-engine docker.io 2>/dev/null
sudo apt update
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install docker-ce docker-ce-cli containerd.io uidmap
sudo usermod -aG docker $USER
newgrp docker
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.12.0-amd64.deb
sudo apt remove docker-desktop
rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop
sudo apt install gnome-terminal
sudo apt install ./docker-desktop-*-amd64.deb
systemctl --user start docker-desktop
# Accept License and quit
docker compose version
docker version
sudo systemctl stop docker docker.socket containerd
sudo systemctl disable docker docker.socket containerd
docker context ls
docker context use default
docker context use desktop-linux
```

#### Git aliases by default in ZSH

```
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
```

- https://www.hschne.at/git-aliases/

#### Ubuntu software

WHen you try to update snap store and doesn´t work, launch:

```
sudo killall snap-store
```

and usually that fix the issue, but in opposite scenario:

```
sudo snap refresh snap-store
```

### General UI

1. Install extrensions and Tweaks
2. Install next extensions (Details in next section):

- Sound Input & Output Device Chooser
- User themes
- WinTile

3. Follow the instructions in their own folders
4. Deactivate Wayland for incompatibility with Teams

- /etc/gdm3/custom.conf put WaylandEnable=false and reboot system.

5. Select a wallpaper
6. In Extensions configure the extensions.
7. Apply cursors, icons and theme (shell section) in Tweaks
8. For configure Top bar, follow the instructions in this video:

- https://www.youtube.com/watch?v=L1XGDQdW3ns (Not valid for xorg, unstable system)

9. Install next plugins:

- btop (substitute of top)
- dust (substitute du)
- tldr (substitue of man)
- atuin: command history db
- neofetch: Show characteristics of the laptop

10. Install Plank MacOS main bar style:

- https://www.youtube.com/watch?v=9Ol_B4WBFoY

#### Audio devices in Gnome Shell 

```
sudo apt update
sudo apt install chrome-gnome-shell gnome-shell-extension-prefs
```

Go to: 

https://extensions.gnome.org/extension/906/sound-output-device-chooser/

In case that is not installed Extensions for browser used, intall it and activate this plugin

#### Tile Windows as Windows SO in Gnome Shell

Go to:

https://extensions.gnome.org/extension/1723/wintile-windows-10-window-tiling-for-gnome/

Activate this plugin
