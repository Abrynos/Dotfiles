# Installation

## As `root`

Replace `/etc/apt/sources.list`:
```bash
# stable updates
deb http://deb.debian.org/debian/ stable main contrib non-free
deb http://deb.debian.org/debian/ stable-updates main contrib non-free
deb http://deb.debian.org/debian-security stable/updates main

# testing updates
deb http://deb.debian.org/debian/ testing main contrib non-free
deb http://deb.debian.org/debian/ testing-updates main contrib non-free
deb http://deb.debian.org/debian-security testing-security main

```

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
sudo apt install scrot i3blocks curl thunar gvfs gvfs-backends gvfs-fuse lxappearance network-manager inkscape lm-sensors numlockx arc-theme imagemagick fonts-font-awesome rofi compton feh gnome-terminal chromium chromium-sandbox acpi gtk2-engines-pixbuf x11-xserver-utils vifm alsa-utils volumeicon-alsa neofetch gnome-mines gnome-mahjongg gnome-sudoku evince pulseaudio pavucontrol xclip open-vm-tools texlive-full htop
chmod 710 /home/$USER # makes sure stuff like ~/.cache/thumbnails (and other stuff) is not readable
sudo reboot # not really required but a nice thing to do
```

# Configuration

## networks

Use `nmtui` or `nmcli` to configure network access. This note is especially concerned about the local DNS server.

Edit `/etc/nsswitch.conf`. The line concerned about `hosts` should list `dns` first followed by `files` and nothing more (or just a comment alternatively).

## monitor and visual configuration

Change primary monitor (execute when only that one is connected or choose manually instead of the grep/sed evaluation).
```bash
xrandr --output $(xrandr | grep \ connected | sed "s/ .*//g") --primary
```
Run `lxappearance` and choose `Arc-Dark` theme in the GUI

## ssh key

```bash
ssh-keygen -t "ed25519" -C "${USER}@${HOSTNAME}.local" -f "${HOME}/.ssh/id_ed25519"
````

## gpg key

```bash
gpg --default-new-key-algo "ed25519" --gen-key
````
For import to GitHub and similar services:
```bash
gpg --armor --export # in case of multiple keys, append ID of wanted key obtainable via gpg --list-keys
```
For GitHub: Make sure the email in the gpg key is the same as the email configured in git below.

## `git` configuration

```bash
git config --global core.editor "vim"
git config --global user.name "Abrynos"
git config --global user.email "6608231+Abrynos@users.noreply.github.com"
git config --global pull.rebase true
git config --global commit.gpgsign true
```
In case of multiple gpg keys, add `git config --global user.signingKey {id}` replacing `{id}` with the ID of the wanted key, obtainable via `gpg --list-keys`.

## `vim` configuration

```bash
git clone "https://github.com/VundleVim/Vundle.vim.git" "${HOME}/.config/vim/bundle/Vundle.vim"
vim +PluginInstall +qall
```

## certificates

- Copy root certificate to `/usr/local/share/ca-certificates/`
- Run `sudo update-ca-certificates`

## Audio control

After a reboot open preferences of sound icon in status bar and set the external mixer to 'pavucontrol'

## IDEs

### JetBrains

Install [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/).
```bash
wget --show-progress -qO ./toolbox.tar.gz "https://data.services.jetbrains.com/products/download?platform=linux&code=TBA"
TOOLBOX_TMP_DIR=$(mktemp -d)
tar -C "$TOOLBOX_TMP_DIR" -xf ./toolbox.tar.gz
rm ./toolbox.tar.gz
$TOOLBOX_TMP_DIR/*/jetbrains-toolbox
rm -r "$TOOLBOX_TMP_DIR"

mkdir -p $HOME/bin
ln -s $HOME/.local/share/JetBrains/Toolbox/bin/jetbrains-toolbox $HOME/bin/jetbrains-toolbox
```
