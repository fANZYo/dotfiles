pacman -Syu
pacman -S termite neovim tmux git nodejs yaourt arc-gtk-theme

cp .bashrc .fehbg .gitconfig .gtkrc-2.0 i3blocks.conf install.sh .tmux.conf .xinitrc .Xresources ~/

# Vim plugins
mkdir .config/nvim/bundle
cd .config/nvim/bundle
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
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/tpope/vim-repeat.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/christoomey/vim-tmux-navigator.git

# Fonts
pacman -S ttf-dejavu
yaourt ttf-monaco ttf-opensans system-san-francisco-git
