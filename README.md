# dotenvs

#### Some configurations for MAC/Linux

- Shell environemnt: ZSH - Oh my ZSH - Powerlevel10k
(https://dev.to/christopherjael/como-personalizar-tu-terminal-utilizando-oh-my-zsh-con-powerlevel10k-4bdi)
- Include fonts compatible with NVIM and Powerlevel10k
- Some aliases, configd and plugins in zshrc

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

#### Audio devices in Ubuntu

```
sudo apt update
sudo apt install chrome-gnome-shell gnome-shell-extension-prefs
```

Go to: 

https://extensions.gnome.org/extension/906/sound-output-device-chooser/

Install plugin for browser and activate the plugin

#### Ubuntu software

WHen you try to update snap store and doesn´t work, launch:

```
sudo killall snap-store
```

and usually that fix the issue, but in opposite scenario:

```
sudo snap refresh snap-store
```

### Themes and Icons

1. Install extrensions and Tweaks
2. Install next extensions:

- Dash to Dock.
- Sound Input & Output Device Chooser
- User themes

3. Follow the instructions in their own folders
4. Select a wallpaper
5. In Extensions configure the extensions.
6. Apply cursors, icons and theme (shell section) in Tweaks
7. For configure Top bar, follow the instructions in this video:

- https://www.youtube.com/watch?v=L1XGDQdW3ns (Not valid for xorg, unstable system)

8. Install next plugins:

- btop (substitute of top)
- dust (substitute du)
- tldr (substitue of man)
- atuin: command history db
- neofetch: Show characteristics of the laptop