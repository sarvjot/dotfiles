ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/.fzf.zsh ~/.fzf.zsh
ln -s ~/.dotfiles/.config ~/.config

# install these dependencies
#
# ohmyzsh
# zsh-autosuggestions
# zsh-syntax-highlighting
# powerlevel10k
# lsd
# bat
# fzf
# autojump
# bob
# nvm
#
# For iterm, 
#		go to "Settings > Preferences" 
#		enable "Load Preferences from Folder" option
#		and put "$dotfiles_path/.config/iterm2_profile/" there

use_development() {
	rm -rf ~/.local/share/nvim
	rm -rf ~/.dotfiles/.config/nvim
	ln -s nvim-dev nvim 
}

use_production() {
	rm -rf ~/.local/share/nvim
	rm -rf ~/.dotfiles/.config/nvim
	ln -s nvim-prod nvim 
}
