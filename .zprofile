if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval "$(ssh-agent)"
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi

export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock

ssh-add -l > /dev/null || ssh-add

setopt extendedglob

for card in /sys/class/drm/card+([0-9])(N); do
  if [[ -e "$card/device/driver" ]]; then
    driver=${${(f)"$(readlink -f "$card/device/driver")"}:t}
    if [[ "$driver" == "i915" ]]; then
      export WLR_DRM_DEVICES="/dev/dri/${card:t}"
      break
    fi
  fi
done

if [ "$(tty)" = "/dev/tty1" ]; then
  exec dbus-run-session sway
fi
