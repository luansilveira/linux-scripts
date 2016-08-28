#!/bin/bash

echo "
[gocd]
name     = GoCD YUM Repository
baseurl  = https://download.go.cd
enabled  = 1
gpgcheck = 1
gpgkey   = https://download.go.cd/GOCD-GPG-KEY.asc
" | sudo tee /etc/yum.repos.d/gocd.repo

sudo dnf install go-server
sudo ausearch -c 'accounts-daemon' --raw | audit2allow -M my-accountsdaemon
sudo semodule -X 300 -i my-accountsdaemon.pp
sudo dnf install go-server
sudo dnf isntall go-agent


sudo su -l go
echo "



" | ssh-keygen

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

sudo dnf isntall xclip

cat ~/.ssh/id_rsa.pub | xclip -sel clip

echo "Your key has been copied to clipboard. Please paste it on your server: Ex: Bitbucket"

echo "
StrictHostKeyChecking no
UserKnownHostsFile /dev/null
" | tee ~/.ssh/config
