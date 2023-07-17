# script from -- https://www.robinwieruch.de/mac-setup-web-development/

xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

brew install --cask \
  arc \
  1password \
  1password/tap/1password-cli \
  google-chrome  \
  firefox \
  raycast \
  sequel-pro \
  iterm2 \
  kitty \
  sublime-text \
  vscodium \
  visual-studio-code \
  slack \
  discord \
  signal \
  vlc \
  imageoptim \
  maccy \
  protonvpn \
  whatsapp \
  messenger \
  keepassx \
  owncloud \
  appcleaner
 
brew install \
  wget \
  tree \
  exa \
  php \
  tmux \
  git \
  lazygit \
  nvm \
  pnpm \
  graphicsmagick \
  commitzen \
  cmatrix \
  ruby \
  docker \
  vips \
  phpunit \
  phpenv \
  cocoapods \
  sl \
  composer

sh zsh-install.sh

# NV-Chad NeoVim IDE
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
# from https://github.com/nvim-treesitter/nvim-treesitter
# :TSInstall css html scss javascript php ruby go sass sql regex jsdoc json dockerfile bash twig rust astro tsx

# NVM
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
source ~/.zshrc
nvm install v18.0.0
node -v && npm -v
npm install -g npm@latest
npm set init.author.name "PoulyCroc"
npm set init.author.email "poulycroc.studio@gmail.com"


# add https://www.homerow.app/

sh nerd-font-install.sh
