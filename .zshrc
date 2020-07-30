setopt autocd
setopt promptsubst
bindkey -v

HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/themes/agnoster-zsh-theme/agnoster.zsh-theme
source /usr/share/doc/pkgfile/command-not-found.zsh
source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

prompt_context() { }

(cat ~/.config/wpg/sequences &)
source ~/.cache/wal/colors-tty.sh

[[ $TERM == xterm-kitty ]] && { clear && bitfetch; };
