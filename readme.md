### nord dotfiles
![fetch](.img/fetch.png)
#### nvim
![nvim](.img/nvim.png)
#### gotop
![gotop](.img/gotop.png)
#### wofi
![wofi](.img/wofi.png)
#### zathura
![zathura](.img/zathura.png)
#### gtklock
![gtklock](.img/lockscreen.png)
#### programs/tools:
- window manager: [sway](https://swaywm.org)
- bar: [waybar](https://github.com/Alexays/Waybar)
- app launcher: [wofi](https://hg.sr.ht/~scoopta/wofi)
- notifications: [mako](https://github.com/emersion/mako)
- lock screen: [gtklock](https://github.com/jovanlanik/gtklock)
- keyboard manager: [keyd](https://github.com/rvaiya/keyd)
- terminal: [st](https://st.suckless.org)
- shell: [zsh](https://github.com/zsh-users/zsh.git)
- editor: [neovim](https://neovim.io) using [nvchad](https://nvchad.github.io)
- document viewer: [zathura](https://pwmt.org/projects/zathura/)
- music player: [spotify-tui](https://github.com/Rigellute/spotify-tui) & spotify with [spicetify](https://spicetify.app)
- system monitor: [gotop](https://github.com/xxxserxxx/gotop.git)
- gtk theme: [catppuccin](https://github.com/catppuccin/gtk)

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

#### tty colours (and art)
(hex) colors can be set in `/etc/issue` and ascii art:
```shell
]P01E1E2E]P8585B70]P7BAC2DE]PFA6ADC8]P1F38BA8]P9F38BA8]P2A6E3A1]PAA6E3A1]P3F9E2AF]PBF9E2AF]P489B4FA]PC89B4FA]P5F5C2E7]PDF5C2E7]P694E2D5]PE94E2D5[H[2J[3J]P01E1E2E]P8585B70]P7BAC2DE]PFA6ADC8]P1F38BA8]P9F38BA8]P2A6E3A1]PAA6E3A1]P3F9E2AF]PBF9E2AF]P489B4FA]PC89B4FA]P5F5C2E7]PDF5C2E7]P694E2D5]PE94E2D5[H[2J[3J
[0;35;40m                                           .
[0;35;40m     .vir.                                d$b
[0;35;40m  .d$$$$$$b.    .cd$$b.     .d$$b.   d$$$$$$$$$$$b  .d$$b.      .d$$b.
[0;35;40m  $$$$( )$$$b d$$$()$$$.   d$$$$$$$b Q$$$$$$$P$$$P.$$$$$$$b.  .$$$$$$$b.
[0;35;40m  Q$$$$$$$$$$B$$$$$$$$P"  d$$$PQ$$$$b.   $$$$.   .$$$P' `$$$ .$$$P' `$$$
[0;35;40m    "$$$$$$$P Q$$$$$$$b  d$$$P   Q$$$$b  $$$$b   $$$$b..d$$$ $$$$b..d$$$
[0;35;40m   d$$$$$$P"   "$$$$$$$$ Q$$$     Q$$$$  $$$$$   `Q$$$$$$$P  `Q$$$$$$$P
[0;35;40m  $$$$$$$P       `"""""   ""        ""   Q$$$P     "Q$$$P"     "Q$$$P"
[0;35;40m  `Q$$P"                                  """
[0;37;40m

\n (\s \m \r) \t \d
```
