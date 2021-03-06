echo
echo "Installing Git and associated tools"
brew install git
brew cask install rowanj-gitx

echo
echo "Setting global Git configurations"
git config --global core.editor /usr/bin/vim
git config --global transfer.fsckobjects true
