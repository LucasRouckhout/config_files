# i3 needs:
#	- nitrogen
#	- gnome-flashback
#	- rofi
echo "####### Installing dependencies needed for i3"

apt install fonts-font-awesome nitrogen python3-tk gnome-flashback pulseaudio-utils rofi i3-gaps python3-pip xbacklight dbus volumeicon-alsa numlockx -y
pip3 install --user bumblebee-status
pip3 install --user psutil i3ipc

echo "####### You will also need neovim..."

apt install python3-neovim -y
