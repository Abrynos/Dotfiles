# Installation
## As `root`
```bash
apt update
apt dist-upgrade
apt install xinit i3 vim git network-manager debconf sudo
echo -e "Defaults\tinsults" > /etc/sudoers.d/addInsults
usermod -aG sudo {username} # replace "{username}" with normal username
service sudo restart
```
From here on we do not need the `root` user any more.
## As normal user
Now that `git` is installed, it's time to `git clone` this repository to normal users home directory. Copy and pasting the things to come is easier than typing them manually.

```bash
sudo apt install scrot i3blocks curl thunar lxappearance network-manager-gnome inkscape lm-sensors numlockx arc-theme imagemagick fonts-font-awesome rofi compton feh gnome-terminal chromium chromium-sandbox acpi gtk2-engines-pixbuf x11-xserver-utils vifm alsa-utils volumeicon-alsa neofetch gnome-mines gnome-mahjongg gnome-sudoku evince pulseaudio pavucontrol xclip open-vm-tools --no-install-recommends
sudo reboot # not really required but a nice thing to do
```
# Configuration
## monitor and visual configuration
Change primary monitor (execute when only that one is connected or choose manually instead of the grep/sed evaluation).
```bash
xrandr --output $(xrandr | grep \ connected | sed "s/ .*//g") --primary
lxappearance # choose Arc-Dark in the GUI
```
## ssh key
```bash
ssh-keygen -t ed25519 -C ${USER}@${HOSTNAME}.local -f ${HOME}/.ssh/id_ed25519
````
## `git` configuration
```bash
git config --global core.editor "vim"
git config --global user.name "Abrynos"
git config --global user.email "6608231+Abrynos@users.noreply.github.com"
```
## `vim` configuration
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/vim/bundle/Vundle.vim
vim +PluginInstall +qall
```
## Audio control
After a reboot open preferences of sound icon in status bar and set the external mixer to 'pavucontrol'
