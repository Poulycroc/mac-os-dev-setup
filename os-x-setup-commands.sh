# script from -- https://www.robinwieruch.de/mac-setup-web-development/

xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

brew install --cask \
  1password \
  google-chrome  \
  firefox \
  iterm2 \
  sublime-text \
  slack \
  discord \
  signal \
  vlc \
  imageoptim \
  maccy \
  protonvpn \
  whatsapp \
  messenger \
  appcleaner
 
brew install \
  wget \
  exa \
  php \
  git \
  nvm \
  pnpm \
  graphicsmagick \
  commitzen \
  cmatrix \
  ruby \
  docker \
  vips

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
omz update
source ~/.zshrc
brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

#!/bin/sh

cat <<EOT >> ~/.zshrc
# Path to your oh-my-zsh installation.
export ZSH="\$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in \$ZSH/plugins/
# Custom plugins may be added to \$ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# get machine's ip address
alias ip="ipconfig getifaddr en0"

# edit global zsh configuration
alias zshconfig="vim ~/.zshrc"
# reload zsh configuration
alias zshsource="source ~/.zshrc"
# reload zsh configuration
alias ohmyzsh="cd ~/.oh-my-zsh"

# navigate to global ssh directory
alias sshhome="cd ~/.ssh"
# edit global ssh configuration
alias sshconfig="vim ~/.ssh/config"

# edit global git configuration
alias gitconfig="vim ~/.gitconfig"

# git aliases
alias gits="git status"
alias gitd="git diff"
alias gitl="git lg"
alias gita="git add ."
alias wip="git add . && git commit -m 'wip' && git push"
alias gitc="cz commit"

# type sublime . to open current folder in Sublime Text
alias sublime="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl --new-window \$@"

# load zsh-completions
autoload -U compinit && compinit

# use nvm
source /opt/homebrew/opt/nvm/nvm.sh

# use starship theme (needs to be at the end)
eval "\$(starship init zsh)"
EOT



sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# space vim
curl -sLf https://spacevim.org/install.sh | bash -s -- -h

# NVM
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
source ~/.zshrc
nvm install v18.0.0
node -v && npm -v
npm install -g npm@latest
npm set init.author.name "PoulyCroc"
npm set init.author.email "poulycroc.studio@gmail.com"
