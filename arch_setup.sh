# Install pacakges
sudo pacman -Syuu
sudo pacman -S --noconfirm yay neovim stow

yay -S --noconfirm base-devel exa bat zsh-theme-powerlevel10k-git tmux xclip fzf ripgrep fd npm lazygit eslint prettier kvantum latte-dock kwin-bismuth

npm i -g neovim


# Create ssh key for github
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub | xclip -selection c
xdg-open https://github.com/settings/ssh/new


# Setup git config
git config --global user.email "trw0511@gmail.com"
git config --global init.defaultBranch main


# TMUX Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


# Install dotfiles
mkdir ~/dotfiles
git clone git@github.com:trwinowiecki/dotfiles.git ~/dotfiles
stow ~/dotfiles

