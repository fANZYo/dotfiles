sudo pacman -Syu
sudo pacman -S termite neovim tmux git nodejs yaourt arc-gtk-theme zsh-theme-powerlevel9k gmrun
chsh -s $(which zsh)

# Remove old dot files
rm ~/.gitconfig
rm ~/.config/termite/config
rm ~/.tmux.conf
rm ~/.vimrc
rm ~/.zshrc
rm ~/.bashrc
rm ~/.gtkrc-2.0
rm ~/.Xresources
rm ~/.Xmodmap

# Vim plugins
mkdir -p ~/.config/nvim/bundle ~/.config/nvim/autoload
curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.config/nvim/bundle
git clone https://github.com/jiangmiao/auto-pairs.git
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/othree/javascript-libraries-syntax.vim.git
git clone https://github.com/rstacruz/sparkup.git
git clone https://github.com/vim-syntastic/syntastic.git
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

# Vim colors
mkdir -p ~/.config/nvim/colors
ln ./config/nvim/colors/monokai2.vim        ~/.config/nvim/colors/monokai2.vim

# Link new dot files
ln ./gitconfig                    ~/.gitconfig
mkdir -p ~/.config/termite
ln ./config/termite/config        ~/.config/termite/config
ln ./tmux.conf                    ~/.tmux.conf
ln ./config/nvim/init.vim         ~/.config/nvim/init.vim
ln ./zshrc                        ~/.zshrc
ln ./bashrc                       ~/.bashrc
ln ./gtkrc-2.0                    ~/.gtkrc-2.0
ln ./Xressource                   ~/.Xresources
ln ./Xmodmap                      ~/.Xmodmap
ln ./xinitrc                      ~/.xinitrc

# Fonts
sudo pacman -S ttf-dejavu
yaourt ttf-monaco ttf-opensans system-san-francisco-git
