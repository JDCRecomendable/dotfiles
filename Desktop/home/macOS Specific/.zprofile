# If the shell is a login shell, commands here execute
# Note that commands in .zprofile execute first before commands
# in .zshrc, assuming that the shell is both a login and an
# interactive shell.
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk17/Contents/Home
PATH=$JAVA_HOME/bin:$PATH

# MacPorts Installer addition on 2022-05-17_at_08:51:20: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.



# Added by Toolbox App
export PATH="$PATH:/Users/jdcr/Library/Application Support/JetBrains/Toolbox/scripts"