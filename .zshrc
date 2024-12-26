# Created by newuser for 5.9
# .zshrc

# Prompt
autoload -U promptinit; promptinit
prompt pure

# Aliases
alias repos='cd /Repos/'
alias hl='cd /Repos/github.com/clumpspirit/homelab'

# Start Hyprland after logging into tty
if [ -z "$TMUX" ] && [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ]; then
  if uwsm check may-start; then
    exec uwsm start hyprland.desktop
  fi
fi

# Completions
fpath+=~/.zfunc

autoload -Uz compinit
compinit -u

zstyle ':completion:*' menu select
