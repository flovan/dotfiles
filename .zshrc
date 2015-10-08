###############################################################################
# ZSH DEFAULTS                                                                #
###############################################################################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme (~/.oh-my-zsh/themes)
ZSH_THEME="Clean"

# Plugins (~/.oh-my-zsh/plugins)
plugins=(git sublime)

# User configuration
source $ZSH/oh-my-zsh.sh

###############################################################################
# ZSH CUSTOM                                                                  #
###############################################################################

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;