if [ -f ~/.config/shell_profile ]; then
    . ~/.config/shell_profile
fi

# only zsh exclusive commands here, general commands
# should be included in shell_profile

if [ -f ~/repos/zsh-git-prompt/zshrc.sh ]; then
    . ~/repos/zsh-git-prompt/zshrc.sh
fi

## Debian-like prompt
PROMPT='%f[%F{cyan}%n%F{gray}@%F{blue}%m%f]$(git_super_status) %F{red}%#%f '
## Fish-like prompt
# PROMPT='%F{cyan}%n%F{gray}@%F{blue}%m%F{red}%#%F{green}>>> %f'
RPROMPT='%F{green}%~%f'

autoload -U compinit
compinit
# colors
autoload -U colors
colors



# in word completion
setopt complete_in_word

# keep background process at full speed
setopt no_bg_nice

# history
HISTFILE=.bash_history
SAVEHIST=9000
setopt append_history
#setopt inc_append_history
#setopt share_history

# can omit cd
setopt auto_cd

# cd to missing folder search for ~/<folder>
setopt cdable_vars

# add / when autocompleting a directory name
setopt auto_param_slash


. /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[kdch1]}" delete-char

# vim:ft=sh
