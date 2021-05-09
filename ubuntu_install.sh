#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root, use sudo "$0" instead" 1>&2
   exit 1
fi

#Open Downloads folder inside Home to download all installers
cd ~/Downloads/

#Download and install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y google-chrome-stable_current_amd64.deb

#Download and install Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.1.2-amd64.deb
sudo apt install -y ./slack-desktop-4.1.2-amd64.deb


#apt
#Install git
sudo apt install -y git
#Install ruby & ruby-dev
sudo apt install -y ruby
sudo apt install -y ruby-dev
#Install cURL
sudo apt install -y curl
#Install node package manager
sudo apt install -y npm
#Install unrar
sudo apt install -y unrar
#Install gparted
sudo apt install -y gparted
#Install zsh
sudo apt install -y zsh
#Downloads custom fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
#Installs custom fonts
sudo cp -r ./MesloLGS%20NF%20Bold.ttf /usr/share/fonts/truetype/MesloLGS%20NF%20Bold.ttf
sudo cp -r ./MesloLGS%20NF%20Italic.ttf /usr/share/fonts/truetype/MesloLGS%20NF%20Italic.ttf
sudo cp -r ./MesloLGS%20NF%20Regular.ttf /usr/share/fonts/truetype/MesloLGS%20NF%20Regular.ttf

#Install Powerlevel10k theme for zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#Install zsh autosuggestions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#Copy shell config
cp ./bashrc ~/.bashrc
cp ./zshrc ~/.zshrc
cp ./p10k.zsh ~/.p10k.zsh

#---------------------------------
#Snaps
#---------------------------------

#Install Visual Studio Code
sudo snap install code --classic

#Install spotify
sudo snap install spotify

#Install discord
sudo snap install discord

#Install VLC video player
sudo snap install vlc

#Install IntelliJ IDEA
sudo snap install intellij-idea-community --classic

#---------------------------------
#Others
#---------------------------------

#Generate ssh key and copies it to clipboard
ssh-keygen -t ed25519 -C "email@example.com"
sudo apt install -y xclip
xclip -sel clip < ~/.ssh/id_ed25519.pub

#Install fastlane
sudo gem install fastlane -NV

#Install sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sudo ln -s ~/.sdkman/candidates/java/current/bin/javac /usr/bin/javac
sudo ln -s ~/.sdkman/candidates/java/current/bin/java /usr/bin/java

sdk install java 8.0.265-open

#Install android-studio after installing Java
sudo snap install android-studio --classic
yes | ~/Android/Sdk/tools/bin/sdkmanager --licenses
sudo apt install -y adb
