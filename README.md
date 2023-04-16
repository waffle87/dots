### catppuccin dotfiles
![fetch](.img/fetch.png)
#### nvim
![nvim](.img/nvim.png)
#### gotop
![gotop](.img/gotop.png)
#### wofi
![wofi](.img/wofi.png)
#### zathura
![zathura](.img/zathura.png)
#### programs/tools:
- window manager: [sway](https://swaywm.org)
- bar: [waybar](https://github.com/Alexays/Waybar)
- app launcher: [wofi](https://hg.sr.ht/~scoopta/wofi)
- notifications: [mako](https://github.com/emersion/mako)
- lock screen: [swaylock-effects](https://github.com/mortie/swaylock-effects)
- keyboard manager: [kmonad](https://github.com/kmonad/kmonad)
- terminal: [alacritty](https://github.com/alacritty/alacritty)
- shell: [zsh](https://github.com/zsh-users/zsh.git)
- editor: [neovim](https://neovim.io) using [nvchad](https://nvchad.github.io)
- document viewer: [zathura](https://pwmt.org/projects/zathura/)
- music player: [spotify-tui](https://github.com/Rigellute/spotify-tui) & spotify with [spicetify](https://spicetify.app)
- system monitor: [gotop](https://github.com/xxxserxxx/gotop.git)
- gtk theme: [catppuccin](https://github.com/catppuccin/gtk)
- cursors: [reimu from touhou](https://www.gnome-look.org/p/1914275)

#### `wpa_cli` notes
```shell
> scan
...
<3>CTRL-EVENT-SCAN-RESULTS
> scan_results # run once above event appears
bssid / freq / sig lvl / flags / ssid
...
> add_network
#
> set_network # ssid "my network"
> set_network # psk "my psswd"
# or if no password:
> set_network # key_mgmt NONE
> enable_network #
> save_config
```

#### tty colors
(hex) colors can be set in `/etc/issue`:
```
]P01E1E2E]P1F38BA8]P2A6E3A1]P3F9E2AF]P489B4FA]P5F5C2E7]P694E2D5]P7BAC2DE[H[2J[3J
This is \n.\O (\s \m \r) \t
```

#### (gen)kernel update (since you i always forget)
```shell
eselect kernel list
eselect kernel set <#>
cd /usr/src/linux
genkernel all
# install/config grub
rm -r /usr/src/linux-x.y.z   \
      /lib/modules/x.y.z     \
      /boot/vmlinuz-x.y.z    \
      /boot/System.map-x.y.z \
      /boot/config-x.y.z     \
      /boot/initramfs-x.y.z
```
