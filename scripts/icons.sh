# Game Center
cp ./icons/gamecenter.icns /Applications/GameCenterShowcase.app/Contents/Resources/Main.icns
cp ./icons/vkplay.icns /Applications/GameCenterShowcase.app/Contents/Frameworks/VKPlayCloud.app/Contents/Resources/playkey_mailru.icns
touch /Applications/GameCenterShowcase.app

# ImageOptim
cp ./icons/imageoptim.icns /Applications/ImageOptim.app/Contents/Resources/ImageOptim.icns

# Notion
cp ./icons/notion.icns /Applications/Notion.app/Contents/Resources/electron.icns
touch /Applications/Notion.app

# OpenVPN
sudo cp ./icons/openvpn.icns /Applications/OpenVPN\ Connect.app/Contents/Resources/electron.icns
sudo touch /Applications/OpenVPN\ Connect.app

# Spotify
cp ./icons/spotify.icns /Applications/Spotify.app/Contents/Resources/Icon.icns
touch /Applications/Spotify.app

# Steam
cp ./icons/steam.icns /Applications/Steam.app/Contents/Resources/Steam.icns
touch /Applications/Steam.app

# Telegram
cp ./icons/telegram.icns /Applications/Telegram.app/Contents/Resources/AppIcon.icns
touch /Applications/Telegram.app

# Transmission
cp ./icons/transmission.icns /Applications/Transmission.app/Contents/Resources/AppIcon.icns
touch /Applications/Transmission.app

# VLC
cp ./icons/vlc.icns /Applications/VLC.app/Contents/Resources/VLC.icns
cp ./icons/vlc.icns /Applications/VLC.app/Contents/Resources/VLC-Xmas.icns
touch /Applications/VLC.app

sudo killall Finder && sudo killall Finder
