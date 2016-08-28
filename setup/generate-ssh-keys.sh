#!/bin/bash

echo "



" | ssh-keygen

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

sudo dnf isntall xclip

cat ~/.ssh/id_rsa.pub | xclip -sel clip

echo "Your key has been copied to clipboard. Please paste it on your server: Ex: Bitbucket"
