#!/bin/bash

echo "Pour Homebrew"

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Homebrew some apps"

	brew install --cask iterm2 chrome-remote-desktop-host google-chrome google-drive alfred tailscale vlc adobe-creative-cloud microsoft-teams mist private-interent-access ticktick bitwarden 
wifiman telegram raspberry-pi-imager eul keybase

echo "Get Ryan's tmux Config"

	git clone --quiet git@github.com:mrrcollins/tmux.conf ~.tmux.conf

echo "Get some fonts"

brew tap homebrew/cask-fonts #You only need to do this once for cask-fonts
    brew install --cask font-fantasque-sans-mono
	brew install --cask font-libre-baskerville font-libre-bodoni font-libre-barcode-39-extended font-pt-sans font-poppins font-merriweather
