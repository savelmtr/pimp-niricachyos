#!/bin/bash
# Самый минимальный вариант

sudo pacman -Syu --noconfirm p7zip git lazygit yay docker docker-buildx docker-compose yazi telegram-desktop neovide neovim btop libreoffice libreoffice-fresh-ru zoxide ratarmount ntfsprogs xarchiver exiftool zathura-djvu zathura-pdf-mupdf zathura trash-cli imv kitty wl-clipboard cliphist tree-sitter-cli gcc npm wireguard-tools mpv nmap gvfs-mtp gvfs-afc gvfs-gphoto2 gvfs-nfs gvfs-smb gvfs-afc gvfs-dnssd gvfs-goa gvfs-onedrive gvfs-wsdd gvfs glib2 duckdb jq glow

yay -Syu --noconfirm nirimod-git trueconf fuse-archive noctalia

# Шрифты
sudo pacman -S --noconfirm ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-fira-code ttf-nerd-fonts-symbols ttf-hack ttf-hack-nerd noto-fonts noto-fonts-emoji noto-fonts-cjk adobe-source-code-pro-fonts
yay -S --noconfirm ttf-meslo-nerd-font-powerlevel10k

# Копирование конфигов
mkdir -p ~/.config ~/.local/bin ~/.config/systemd/user ~/.config/fish

cp -fr niri ~/.config/
cp -fr yazi ~/.config/
cp -fr nvim ~/.config/
cp -fr noctalia ~/.config/
cp -f mimeapps.list ~/.config/
cp -f config.fish ~/.config/fish/
cp -f kitty.conf ~/.config/kitty/
cp fuse-mounter ~/.local/bin/

chmod +x ~/.local/bin/fuse-mounter

sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo usermod -aG docker $USER

fc-cache -fv
