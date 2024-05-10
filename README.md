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

Install plugin for browser
And activate the plugin