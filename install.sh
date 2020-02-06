# i3 needs:
#	- nitrogen
#	- gnome-flashback
#	- rofi
echo "####### Installing dependencies needed for i3"

apt install nitrogen gnome-flashback rofi -y

echo "####### You will also need neovim..."

apt install python3-neovim -y
