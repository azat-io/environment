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
	cp ~/Library/Fonts/MartianMono-WdRg.ttf ./temp/MartianMono-WdRg.ttf
	fontforge -script ./temp/nerd-fonts/font-patcher ./temp/MartianMono-WdRg.ttf
	mv ./Martian\ Mono\ Wd\ Rg\ Nerd\ Font.ttf ~/Library/Fonts/MartianMono-WdRg-NerdFont.ttf
	rm -rf ./temp
	rm ./Martian\ Mono\ Wd\ Rg\ Nerd\ Font.ttf
