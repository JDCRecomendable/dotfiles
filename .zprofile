# If the shell is a login shell, commands here execute
# Note that commands in .zprofile execute first before commands
# in .zshrc, assuming that the shell is both a login and an
# interactive shell.
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk17/Contents/Home
PATH=$JAVA_HOME/bin:$PATH

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by Toolbox App
export PATH="$PATH:/Users/username/Library/Application Support/JetBrains/Toolbox/scripts"
