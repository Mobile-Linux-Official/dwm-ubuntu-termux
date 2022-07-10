#!/bin/bash
sudo apt update -y
sudo apt install keyboard-configuration tzdata -y
sudo apt install sudo wget dialog -y
sudo apt install libexo-2-0 -y
sudo apt install build-essential libx11-dev libxinerama-dev sharutils suckless-tools libxft-dev stterm
sudo apt install tigervnc-standalone-server wget nano dbus-x11 xorg feh xfce4-terminal pcmanfm tigervnc-common -y
cd /usr/local/src
wget http://dl.suckless.org/dwm/dwm-6.2.tar.gz
tar xvzf dwm-6.2.tar.gz
chown -R `id -u`:`id -g` dwm-6.2
cd dwm-6.2/
sudo make clean install
cd
clear

mkdir -p ~/.vnc

wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/WM/wallpaper.jpg -O /usr/share/wallpaper.jpg
echo "#!/bin/bash
[ -r ~/.Xresources ] && xrdb ~/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:1
XAUTHORITY=~/.Xauthority
export XAUTHORITY
dbus-launch dwm
feh --bg-fill /usr/share/wallpaper.jpg" > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

wget https://raw.githubusercontent.com/Tutojay/dwm-ubuntu-termux/master/vnc/vncstart -O /usr/local/bin/vncstart
wget https://raw.githubusercontent.com/Tutojay/dwm-ubuntu-termux/master/vnc/vncstop -O /usr/local/bin/vncstop
chmod +x /usr/local/bin/vncstart
chmod +x /usr/local/bin/vncstop


echo "You can now start vncserver by running vncserver-start"
echo ""
echo "It will ask you to enter a password when first time starting it."
echo ""
echo "The VNC Server will be started at 127.0.0.1:5901"
echo ""
echo "You can connect to this address with a VNC Viewer you prefer"
echo ""
echo ""
echo ""
echo "Running vncstart"
echo ""
echo ""
echo ""
echo "To Kill VNC Server just run vncstop"
echo ""
echo ""
echo ""

vncpasswd
