PROMPT="%F{yellow}[%f%F{red}%n%f%F{yellow}@%f%F{cyan}%m%f%F{yellow}]%f %~  "
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

neofetch

bindkey '^ ' autosuggest-execute
bindkey '^f' autosuggest-accept
