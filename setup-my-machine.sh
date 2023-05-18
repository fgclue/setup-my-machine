# Setup-My-Machine
# distros supported:
# Fedora[testing]
# Ubuntu[testing]
# Arch[testing]
# adds support for flatpaks
# installs:
# firefox
# steam
# kitty
# gimp
# gnome-software
# xed
# nautilus
# flameshot
# nitrogen
# rofi
# dmenu
# shotcut
# obsidian
# melonDS
# mpv
# thunderbird mail
# keepassxc
# gnome-boxes
# gnome-builder
# gnome-calc
# inkscape
# arduino ide
# blender
# calendar
# cheese
# chess
# clocks
# discord
# gnome-disks
# libreoffice suite
# fish
# freecad
# shotwell
# feh
# xfburn
# xterm
# neovim
# virtual machine manager (kvm)

if [$1 = "fedora"]
then
	sudo dnf install firefox kitty gimp gnome-software xed nautilus flameshot
	sudo dnf install nitrogen rofi dmenu mpv thunderbird keepassxc gnome-boxes gnome-builder gnome-calculator inkscape blender gnome-calendar cheese gnome-chess gnome-clocks gnome-disk-utility libreoffice fish freecad shotwell feh xfburn xterm neovim
	git clone https://github.com/fgclue/dotfiles/
	cd dotfiles
	cp -r i3 ~/.config/
	cp -r ./fish/config.fish ~/.config/fish/
	cp -r polybar ~/.config/
    # Flatpak fix (fixes flatpaks if they don't work)
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	flatpak install fedora com.valvesoftware.Steam
	flatpak install fedora md.obsidian.Obsidian
	flatpak install fedora org.shotcut.Shotcut
	flatpak install fedora net.kuribo64.melonDS
	flatpak install fedora cc.arduino.arduinoide
	flatpak install fedora com.discordapp.Discord
	cp -r kitty ~/.config/
	cp -r rofi ~/.config/
	echo "Setup done!"
fi
