export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):$HOME/factorio/bin/x64/:$HOME/opt/cross/bin:$HOME/renderdoc/build/bin:$HOME/.cabal/bin"

export TERMINAL="st"
export EDITOR="nvim"
export BROWSER="firefox"
export FILE="ranger"

export NOTMUCH_CONFIG="$HOME/.config/notmuch-config"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export INPUTRC="$HOME/.config/inputrc"
export ZDOTDIR="$HOME/.config/zsh"
export ZSH_CUSTOM="$HOME/.config/oh-my-zsh"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"

mpd >/dev/null 2>&1 &

eval $(ssh-agent)

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
export PATH="$HOME/.cargo/bin:$PATH"
