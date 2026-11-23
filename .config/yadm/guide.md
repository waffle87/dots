# Yadm-managed dotfile user guide

## Change something shared by every machine (e.g. `conform.lua`):

```shell
cd ~/git/dots
git checkout common && git pull --ff-only
$EDITOR .config/nvim/lua/configs/conform.lua
git commit -am "Tweak conform" && git push
git checkout common-desktop && git pull --ff-only && git merge common && git push
```

Then on macOS and headless machines run `yadm fetch origin && yadm merge origin/common`. On Linux desktops run `yadm fetch origin && yadm merge origin/common-desktop`.

## Change something shared by desktops (e.g. `sway/config`):

```shell
cd ~/git/dots
git checkout common-desktop && git pull --ff-only
$EDITOR .config/sway/config
git commit -am "Tweak sway" && git push
```

Then run `yadm fetch origin && yadm merge origin/common-desktop` on the desktops. Nothing needs to happen on common.

## Change a machine-only file (theme, `*.local`, `config.d/*`, waybar and so on):

Edit the live file, then `yadm add`, `yadm commit` and `yadm push`.

## Set up a new machine:

```shell
yadm clone -b common-desktop --bootstrap <url>   # use -b common for mac/headless
$EDITOR ~/.zshrc.local ~/.config/theme.zsh ...   # edit the seeded files
yadm checkout -b newhost
yadm add <the seeded files edited>
yadm commit -m "Initial machine config" && yadm push -u origin newhost
```
