#Open Downloads folder inside Home to download all installers
cd Downloads/

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

#---------------------------------
#Snaps
#---------------------------------

#Install android-studio
sudo snap install android-studio --classic
yes | ~/Android/Sdk/tools/bin/sdkmanager --licenses
sudo apt install -y adb

#Install Visual Studio Code
sudo snap install code --classic

#Install spotify
sudo snap install spotify

#Install discord
sudo snap install discord

#Install VLC video player
sudo snap install vlc

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

#Utilities shortcuts
alias gc="git clone"
alias gp="git pull"
alias gs="git status"
alias gl="git log --oneline"
alias gaa="git add ."
alias gc="git commit"
alias gcm="git commit -m $1"
