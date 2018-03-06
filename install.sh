pacman -Syu
pacman -S termite neovim tmux git nodejs yaourt arc-gtk-theme

# Remove old dot files
rm ~/.gitconfig
rm ~/.tmux.conf
rm ~/.vimrc
rm ~/.zshrc
rm ~/.bashrc
rm ~/.gtkrc-2.0
rm ~/.Xresources

# Link new dot files
ln ~/git/dotfiles/gitconfig                    ~/.gitconfig
ln ~/git/dotfiles/tmux.conf                    ~/.tmux.conf
ln ~/git/dotfiles/config/nvim/init.vim         ~/.config/nvim/init.vim
ln ~/git/dotfiles/zshrc                        ~/.zshrc
ln ~/git/dotfiles/bashrc                       ~/.bashrc
ln ~/git/dotfiles/gtkrc-2.0                    ~/.gtkrc-2.0
ln ~/git/dotfiles/Xressource                   ~/.Xresources
ln ~/git/dotfiles/xinitrc                      ~/.xinitrc

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
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/tpope/vim-repeat.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/christoomey/vim-tmux-navigator.git

# Fonts
pacman -S ttf-dejavu
yaourt ttf-monaco ttf-opensans system-san-francisco-git
