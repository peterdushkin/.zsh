# History settings
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

# Add colors support 
autoload -U colors && colors

# Adding colors to the 'ls' command
alias ls='ls -G'
export CLICOLOR=1

# autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# fzf
eval "$(fzf --zsh)"

# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# =========== SHOULD BE AT THE END ====================== # 
# zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

