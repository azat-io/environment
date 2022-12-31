dotfiles:
	cp ./.gitconfig ~/.gitconfig
	cp ./.zshrc ~/.zshrc
	cp ./.tool-versions ~/.tool-versions

vim:
	rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	rm -rf ~/.config/nvim
	cp -r ./nvim ~/.config/nvim
	nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

nerd_font:
	rm -rf ./temp
	mkdir ./temp
	git clone -b master --depth 1 --single-branch git@github.com:ryanoasis/nerd-fonts.git ./temp/nerd-fonts
	cp ~/Library/Fonts/MartianMono-sWdRg.otf ./temp/MartianMono-sWdRg.otf
	fontforge -script ./temp/nerd-fonts/font-patcher ./temp/MartianMono-sWdRg.otf
	mv  ./Martian\ Mono\ sWd\ Rg\ Nerd\ Font.otf  ~/Library/Fonts/
	rm -rf ./temp
