# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source ~/powerlevel10k/powerlevel10k.zsh-theme

[[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases

# set the correct IP address for the XWindows display for Ubuntu WSL
export DISPLAY=$($HOME/wsldisplay.py)

# WARNING TO SELF ---- Do not shorten PATH, messes with WSL being better than a VM

export DEFAULT_USER=mjackson
# so $USER will equal $DEFAULT_USER and the prompt will not have USER@BOX

# cd $HOME   <---  don't do this, it will override Right-Click Open Here feature

# Github API personal Access tocken for npx shoulders
#  2ada1c581525831017a3d7d6ef58f5337d27856d

export GITHUB_TOKEN='2ada1c581525831017a3d7d6ef58f5337d27856d'

# cd ~/projects/create-simple-react/ 
# GITHUB_TOKEN='2ada1c581525831017a3d7d6ef58f5337d27856d' npx shoulders

cat ~/remember.txt

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
