pacman -Syu
pacman -S termite neovim tmux git nodejs yaourt arc-gtk-theme

# Remove old dot files
rm /home/fanzy/.gitconfig
rm /home/fanzy/.tmux.conf
rm /home/fanzy/.vimrc
rm /home/fanzy/.zshrc
rm /home/fanzy/.bashrc
rm /home/fanzy/.gtkrc-2.0
rm /home/fanzy/.Xresources

# Vim plugins
mkdir -p /home/fanzy/.config/nvim/bundle
cd /home/fanzy/.config/nvim/bundle
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

# Link new dot files
ln /home/fanzy/git/dotfiles/gitconfig                    /home/fanzy/.gitconfig
ln /home/fanzy/git/dotfiles/tmux.conf                    /home/fanzy/.tmux.conf
ln /home/fanzy/git/dotfiles/config/nvim/init.vim         /home/fanzy/.config/nvim/init.vim
ln /home/fanzy/git/dotfiles/zshrc                        /home/fanzy/.zshrc
ln /home/fanzy/git/dotfiles/bashrc                       /home/fanzy/.bashrc
ln /home/fanzy/git/dotfiles/gtkrc-2.0                    /home/fanzy/.gtkrc-2.0
ln /home/fanzy/git/dotfiles/Xressource                   /home/fanzy/.Xresources
ln /home/fanzy/git/dotfiles/xinitrc                      /home/fanzy/.xinitrc

# Fonts
pacman -S ttf-dejavu
yaourt ttf-monaco ttf-opensans system-san-francisco-git
