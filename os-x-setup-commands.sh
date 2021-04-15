
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install --cask iterm2
# update iterm2 settings -> colors, keep directory open new shell, keyboard shortcuts
brew install git
brew install vcprompt
brew install --cask alfred
brew install --cask firefox
brew install --cask vscodium
brew install --cask gitkraken
brew install docker
# install nvm/node

$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install stable
mkdir ~/workspace
npm install -g lite-server eslint
brew cask install visual-studio-code
# update vscode settings
# install vscode extensions 