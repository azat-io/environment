vim:
	rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	rm -rf ~/.config/nvim
	cp -r ./nvim ~/.config/nvim
	nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
