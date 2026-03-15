# History settings
HISTFILE=~/.zsh_history
export HIST_STAMPS="yyyy-mm-dd HH:MM:SS "
export HISTSIZE=50000        # History lines stored in mememory.
export SAVEHIST=50000        # History lines stored on disk.
setopt INC_APPEND_HISTORY    # Immediately append commands to history file.
setopt HIST_IGNORE_ALL_DUPS  # Never add duplicate entries.
setopt HIST_IGNORE_SPACE     # Ignore commands that start with a space.
setopt HIST_REDUCE_BLANKS    # Remove unnecessary blank lines.
setopt SHARE_HISTORY         # Share history in every terminal session

# Disable BEEP
unsetopt beep

# Use modern completion system. Other than enabling globdots for showing
# hidden files, these ares values in the default generated zsh config.
autoload -U compinit
compinit
_comp_options+=(globdots)
autoload -Uz promptinit
promptinit

# Add colors support 
autoload -U colors && colors

export PATH="${PATH}:/Users/laptop/Library/Python/3.9/bin"
export PATH="$HOME/.local/bin:$PATH"

# Adding colors to the 'ls' command
alias lt='eza --tree --level=2 --long --icons --git'
alias ff="fzf --preview 'batcat --style=numbers --color=always {}'"

if [ -x /usr/bin/dircolors ]; then
      test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
      alias ls='ls --color=auto'
      alias dir='dir --color=auto'
      alias vdir='vdir --color=auto'
      alias grep='grep --color=auto'
      alias fgrep='fgrep --color=auto'
      alias egrep='egrep --color=auto'
fi

# autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# fzf
eval "$(fzf --zsh)"

# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# =========== SHOULD BE AT THE END ====================== # 
# zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf key bindings + completion
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

# PS1 
export PS1="%{$(tput setaf 47)%}%n%{$(tput setaf 156)%}@%{$(tput setaf 227)%}%m %{$(tput setaf 231)%}%1~ %{$(tput sgr0)%}$ "

# Time and Date at teh end of the line 

RPROMPT='%D{%Y-%m-%d %H:%M:%S}'

