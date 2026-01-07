#################
# Powerlevel10k #
#################

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

################
# Main exports #
################

export PATH=$PATH:$HOME/.local/bin:/usr/sbin:$HOME/go/bin
export ZSH="$HOME/.oh-my-zsh"

##########
# Themes #
##########

ZSH_THEME="powerlevel10k/powerlevel10k"

###########
# Plugins #
###########

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
)

#######
# Fzf #
#######

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

###################
# Oh-my-zsh / ZSH #
###################

HIST_STAMPS="mm/dd/yyyy"
source $ZSH/oh-my-zsh.sh

###########################
# ZSH Syntax Highlighting #
###########################
# More details here:
#   https://github.com/zsh-users/zsh-syntax-highlighting/blob/5eb677bb0fa9a3e60f0eff031dc13926e093df92/highlighters/main/main-highlighter.zsh#L32

ZSH_HIGHLIGHT_HIGHLIGHTERS+=(pattern cursor)
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#fcfcfc'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#fcfcfc'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#adadad'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#6d655c'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#b1a7a4'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=white'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#5e736d'
ZSH_HIGHLIGHT_PATTERNS+=('sudo' 'fg=white,bold,bg=red')

#########
# Atuin #
#########

. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh --disable-up-arrow)"
