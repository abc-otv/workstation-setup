# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities

brew cask install flycut
brew cask install shiftit
echo
echo "configure shiftit to select 1/3 screen width, 1/2 screen width and 2/3 screen width:"
echo "`defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES`"
echo
brew cask install dash
brew cask install postman
brew cask install quicklook-json
brew install shellcheck
brew install graphviz
brew install circlecli
brew install awsebcli
curl https://krypt.co/kr | sh

# Terminals

brew cask install iterm2

# Communication

brew cask install slack

# Text Editors

brew cask install macdown
brew cask install sublime-text
brew cask install jetbrains-toolbox # guard against pre-installed jetbrains-toolbox
set -e
