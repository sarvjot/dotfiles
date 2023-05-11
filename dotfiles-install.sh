ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/.fzf.zsh ~/.fzf.zsh
ln -s ~/.dotfiles/.config ~/.config

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
