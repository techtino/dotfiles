setopt autocd
setopt promptsubst

source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/themes/agnoster-zsh-theme/agnoster.zsh-theme
source /usr/share/doc/pkgfile/command-not-found.zsh

prompt_context() { }
(cat ~/.config/wpg/sequences &)
source ~/.cache/wal/colors-tty.sh
[[ $TERM == xterm-kitty ]] && { clear && bitfetch; };
