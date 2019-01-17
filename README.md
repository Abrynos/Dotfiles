# Installation
## apt commands
```bash
sudo apt install xinit i3 vim git network-manager debconf
sudo apt install scrot i3blocks thunar lxappearance network-manager inkscape lm-sensors numlockx arc-theme imagemagick fonts-font-awesome rofi compton feh gnome-terminal chromium acpi gtk2-engines-pixbuf x11-xserver-utils --no-install-recommends
```
## monitor and visual configuration
```bash
xrandr --output LVDS-1 --primary
lxappearance # choose Arc-Dark as theme there
```
## vim configuration
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
git config --global core.editor "vim"
git config --global user.name "Abrynos"
```
