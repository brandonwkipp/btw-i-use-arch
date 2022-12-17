# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/brandon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

############################################################

# Set terminal prompt
PS1='[%n@%m %~]$ '


# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

# Aliases
alias ansible-playbook="sudo ansible-playbook"
alias dmesg="sudo dmesg"
alias mount="sudo mount"
alias mountshare="sudo mountshare"
alias pacman="sudo pacman"
alias umount="sudo umount -R"
