# Installation
## packages
```bash
su
apt install xinit i3 vim git network-manager debconf sudo
exit
sudo apt install scrot i3blocks curl thunar lxappearance network-manager-gnome inkscape lm-sensors numlockx arc-theme imagemagick fonts-font-awesome rofi compton feh gnome-terminal chromium chromium-sandbox acpi gtk2-engines-pixbuf x11-xserver-utils vifm alsa-utils volumeicon-alsa neofetch gnome-mines gnome-mahjongg gnome-sudoku evince pulseaudio pavucontrol xclip open-vm-tools --no-install-recommends
```
## monitor and visual configuration
change primary monitor
```bash
xrandr --output $(xrandr | grep \ connected | sed "s/ .*//g") --primary
lxappearance # choose Arc-Dark as theme there
```
## vim configuration
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
git config --global core.editor "vim"
git config --global user.name "Abrynos"
```
## Franz messenger
clone `https://github.com/kytwb/franz.git` and follow the installation instructions in their README
## Audio control
After a reboot open preferences of sound icon in status bar and set the external mixer to 'pavucontrol'

