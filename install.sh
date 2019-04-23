BASEDIR=$(pwd)
BASE_AUR="https://aur.archlinux.org/cgit/aur.git/snapshot"

sudo pacman -Syu

echo "Installing linux-lts"
sudo pacman -S linux-lts
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "Installing Xorg utils"
sudo pacman -S xorg-server xorg-xinit xorg-xrandr xorg-xbacklight

echo "Installing i3 & utils"
sudo pacman -S i3-wm i3blocks i3lock i3status sysstat acpi alsa-utils playerctl arc-gtk-theme zsh-theme-powerlevel9k pcmanfm

echo "Installing Dev environment"
sudo pacman -S termite tmux neovim git hub nodejs-lts-dubnium npm gmrun openssh ack ruby xsel python-pip
sudo pip install neovim
sudo npm i -g neovim
gem install neovim

echo "Change shell to zsh"
chsh -s $(which zsh)

echo "Installing Vim plugins"
mkdir -p ~/.config/nvim/bundle ~/.config/nvim/autoload
curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.config/nvim/bundle
git clone https://github.com/jiangmiao/auto-pairs.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/wincent/command-t.git
git clone https://github.com/othree/javascript-libraries-syntax.vim.git
git clone https://github.com/rstacruz/sparkup.git
git clone https://github.com/w0rp/ale.git
git clone https://github.com/vim-scripts/tComment.git
git clone https://github.com/tomtom/tcomment_vim.git
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/tpope/vim-repeat.git
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/christoomey/vim-tmux-navigator.git

# Remove old dot files
rm ~/.gitconfig
rm ~/.config/termite/config
rm ~/.config/i3/config
rm ~/.config/nvim/init.vim
rm ~/i3blocks.conf
rm ~/.tmux.conf
rm ~/.local/share/tmux/theme.sh
rm ~/.zshrc
rm ~/.bashrc
rm ~/.gtkrc-2.0
rm ~/.Xresources
rm ~/.Xmodmap
rm ~/.xinitrc

# feh background
ln $BASEDIR/fehbg                                   ~/.fehbg

# Vim colors
mkdir -p ~/.config/nvim/colors
ln $BASEDIR/config/nvim/colors/monokai2.vim         ~/.config/nvim/colors/monokai2.vim

# Link new dot files
ln $BASEDIR/gitconfig                               ~/.gitconfig
mkdir -p ~/.config/termite
ln $BASEDIR/config/termite/config                   ~/.config/termite/config
ln $BASEDIR/tmux.conf                               ~/.tmux.conf
mkdir -p ~/.local/share/tmux
ln $BASEDIR/local/share/tmux/theme.sh               ~/.local/share/tmux/theme.sh
mkdir -p ~/.local/share/wallpaper
cp $BASEDIR/local/share/wallpaper/blueDropd.jpg     ~/.local/share/wallpaper/blueDropd.jpg
ln $BASEDIR/config/nvim/init.vim                    ~/.config/nvim/init.vim
ln $BASEDIR/zshrc                                   ~/.zshrc
ln $BASEDIR/bashrc                                  ~/.bashrc
ln $BASEDIR/ackrc                                   ~/.ackrc
ln $BASEDIR/gtkrc-2.0                               ~/.gtkrc-2.0
ln $BASEDIR/Xresources                              ~/.Xresources
ln $BASEDIR/Xmodmap                                 ~/.Xmodmap
ln $BASEDIR/xinitrc                                 ~/.xinitrc
ln $BASEDIR/i3blocks.conf                           ~/i3blocks.conf
ln $BASEDIR/config/i3/config                        ~/.config/i3/config

# Xorg conf
sudo cp $BASEDIR/etc/X11/xorg.conf.d/*              /etc/X11/xorg.conf.d/

# Icons
cp -r $BASEDIR/local/share/icons                    ~/.local/share/

# Fonts
cp -r $BASEDIR/local/share/fonts                    ~/.local/share/
sudo pacman -S ttf-dejavu awesome-terminal-fonts

curl -L -O "$BASE_AUR/google-chrome.tar.gz"
curl -L -O "$BASE_AUR/system-san-francisco-font-git.tar.gz"
curl -L -O "$BASE_AUR/ttf-monaco.tar.gz"
curl -L -O "$BASE_AUR/ttf-opensans.tar.gz"

tar -xvf google-chrome.tar.gz && rm google-chrome.tar.gz
tar -xvf system-san-francisco-font-git.tar.gz && rm system-sans-francisco-font-git.tar-gz
tar -xvf ttf-monaco.tar.gz && rm ttf-monaco.tar.gz
tar -xvf ttf-opensans.tar.gz && rm ttf-opensans.tar.gz

cd google-chrome && makepkg -si
cd ../system-san-francisco-font-git && makepkg -si
cd ../ttf-monaco && makepkg -si
cd ../ttf-opensans && makepkg -si

cd ../ && rm -rf google-chrome system-san-francisco-font-git ttf-monaco ttf-opensans

mkdir -p ~/.config/fontconfig/conf.d
cp $BASEDIR/config/fontconfig/conf.d/* ~/.config/fontconfig/conf.d

# Github ssh key
ssh-keygen -t rsa -b 4096 -C "www.iehl@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
