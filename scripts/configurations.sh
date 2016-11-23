echo
# prereqs
brew install tccutil
brew tap OJFord/formulae
brew install loginitems

echo "Configuring iTerm"
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo "Configuring ShiftIt"
sudo tccutil --insert "org.shiftitapp.ShiftIt" # Enable Accessibility Settings
loginitems -a "ShiftIt" # Start on login
open /Applications/ShiftIt.app

echo
echo "Installing vim configuration"
pushd ~/
rm -rf ~/.vim
git clone https://github.com/pivotal/vim-config.git ~/.vim
~/.vim/bin/install
popd
