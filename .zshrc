# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
[ -d $HOME/.oh-my-zsh ] && export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="imajes"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

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
COMPLETION_WAITING_DOTS="true"

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
if [ -n "$(uname -a | grep Ubuntu)" ]; then
    plugins=(git zsh-interactive-cd python fzf tig vscode docker ubuntu systemd ufw zsh-autosuggestions)
elif [ -n "$(uname -a | grep Darwin)" ]; then
    plugins=(git zsh-interactive-cd python fzf tig vscode docker macos brew textmate zsh-autosuggestions)
elif [ -f /etc/fedora-release ]; then
    plugins=(git zsh-interactive-cd python fzf tig vscode docker dnf systemd ufw zsh-autosuggestions)
else
    plugins=(git zsh-interactive-cd python fzf tig vscode docker zsh-autosuggestions)
fi

source $ZSH/oh-my-zsh.sh

# User configuration
if [ -f /opt/homebrew/bin/vim ]; then
    export EDITOR=/opt/homebrew/bin/vim
    export VISUAL=/opt/homebrew/bin/vim
else
    export EDITOR=/usr/bin/vim
    export VISUAL=/usr/bin/vim
fi

# export MANPATH="/usr/local/man:$MANPATH"

[ -d $HOME/Library/Android/sdk ] && export ANDROID_HOME=$HOME/Library/Android/sdk

export GPG_TTY=$(tty)
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export HOMEBREW_NO_ANALYTICS=1
ZSH_AUTOSUGGEST_STRATEGY=completion
export TYPEWRITTEN_COLOR_MAPPINGS="primary:red;secondary:red;accent:black;foreground:black"
export TYPEWRITTEN_CURSOR="block"
command -v thefuck &> /dev/null && eval "$(thefuck --alias)"
command -v rbenv &> /dev/null && eval "$(rbenv init - zsh)"

[ -d $HOME/gems/bin ] && export PATH=$HOME/gems/bin/:$PATH
[ -d $HOME/.local/bin ] && export PATH=$HOME/.local/bin/:$PATH
[ -d $HOME/.docker/bin ] && export PATH=$HOME/.docker/bin/:$PATH
[ -d $HOME/Library/Android/sdk/platform-tools ] && export PATH=$HOME/Library/Android/sdk/platform-tools/:$PATH
[ -d $HOME/Library/Android/sdk/cmdline-tools/latest/bin ] && export PATH=$HOME/Library/Android/sdk/cmdline-tools/latest/bin/:$PATH
[ -d $HOME/.lmstudio/bin ] && export PATH=$PATH:$HOME/.lmstudio/bin/
[ -d /snap/bin ] && export PATH=/snap/bin/:$PATH
[ -d /opt/homebrew/opt/node@18/bin ] && export PATH=/opt/homebrew/opt/node@18/bin/:$PATH
[ -d /opt/homebrew/opt/curl/bin ] && export PATH=/opt/homebrew/opt/curl/bin/:$PATH
[ -d $HOME/gems ] && export GEM_HOME="$HOME/gems"
[ -f /opt/homebrew/bin/lesspipe.sh ] && export LESSOPEN="|/opt/homebrew/bin/lesspipe.sh %s"
[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
[ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/fzf/shell/key-bindings.zsh ] && source /usr/share/fzf/shell/key-bindings.zsh
[ -f /etc/zsh_command_not_found ] && source /etc/zsh_command_not_found
[ -d $HOME/.nvm ] && export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
if [ -n "$(uname -a | grep Darwin)" ]; then
    alias ghopen='open -a Firefox.app $(git remote get-url origin)'
else
    alias ghopen='firefox --new-tab $(git remote get-url origin) &'
fi
if [ -f /etc/fedora-release ]; then
    alias open='xdg-open'
fi
command -v cdl &> /dev/null && alias cdlp='f() { cd "$(cdl -p $1)" };f'
command -v batcat &> /dev/null && alias bat="batcat"

# Add integration with iTerm2, ensure this is the last line to load!
[ -e $HOME/.iterm2_shell_integration.zsh ] && source $HOME/.iterm2_shell_integration.zsh || true

# The LM Studio app will add this on launch, so leave this line here to stop it from doing so
# $PATH:/Users/jdcr/.lmstudio/bin
