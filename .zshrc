source ~/znap_installs/zsh-snap/znap.zsh

# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell" # set by `omz`

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
)

ZSH_COLORIZE_STYLE="colorful"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# opam configuration
[[ ! -r /Users/gautomdas/.opam/opam-init/init.zsh ]] || source /Users/gautomdas/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
alias python=/usr/bin/python3

# bun completions
[ -s "/Users/gautomdas/.bun/_bun" ] && source "/Users/gautomdas/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Homebrew and MYSQL
export PATH=/opt/homebrew/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin

# znap installs
# znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
# ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# pnpm
export PNPM_HOME="/Users/gautomdas/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="/Applications/MacPorts/Emacs.app/Contents/MacOS:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"

alias empty="$HOME/bin/empty.sh"
alias recent="$HOME/bin/recent.sh"
alias imgcat="$HOME/bin/imgcat.sh"
alias colortest="$HOME/bin/colortest.sh"

# vcpkg for cpp
export PATH="$HOME/bin/vcpkg/:$PATH"

# command to add writing logs
alias wlog="~/Documents/writings/log.sh"
alias vim="nvim"
alias nvc="nvim ~/.config/nvim/"

# cargo build
source "$HOME/.cargo/env"

# GO folders
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin


source /Users/gautomdas/.docker/init-zsh.sh || true # Added by Docker Desktop

export PATH=$PATH:/opt/local/bin
export CPATH="/usr/local/opt/libffi/lib/libffi-3.3/include:$CPATH"

export DYLD_LIBRARY_PATH="/opt/homebrew/lib:$DYLD_LIBRARY_PATH"

export PATH="/opt/homebrew/sbin:$PATH"


# OpenBLAS Flags
export LDFLAGS="-L/opt/homebrew/opt/openblas/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openblas/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openblas/lib/pkgconfig"

# Lapack Config
export LDFLAGS="-L/opt/homebrew/opt/lapack/lib"
export CPPFLAGS="-I/opt/homebrew/opt/lapack/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/lapack/lib/pkgconfig"

# Add lapack to dyld
export DYLD_LIBRARY_PATH="/opt/homebrew/opt/lapack/lib:$DYLD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="/opt/homebrew/opt/openblas/lib:$DYLD_LIBRARY_PATH"

# Flags for OCaml Graphics
export DISPLAY=:0


export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/lib"

# for latexmk
eval "$(/usr/libexec/path_helper)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/gautomdas/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/gautomdas/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/gautomdas/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/gautomdas/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


autoload bashcompinit
bashcompinit
source "$HOME/bin/vcpkg/scripts/vcpkg_completion.zsh"

source /Users/gautomdas/bin/vcpkg/scripts/vcpkg_completion.zsh
