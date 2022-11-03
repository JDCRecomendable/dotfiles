# Dotfiles
Configuration and scripts shared across different computers.

Use the included `committer` executable to manipulate the dot files:
```sh
chmod +x committer
./committer --help
```

The following `committer` subcommands ("actions") are available:
* `add` - Registers a new file to be tracked into this repository
* `import` - Copies concerned file from the system to this repository
* `export` - Copies concerned file from this repository to the system
* `list` - Shows files being tracked by this repository, by default only active ones
* `info` - Shows information about the concerned file
* `update` - Update information about the concerned file
* `diff` - Displays the difference between the file in the system and this repository
* `mv` - Renames the file of concern in this repository
* `cp` - Copies the file of concern in this repository into another file of concern in this repository
* `rm` - Removes the file of concern from this repository

More information about each of these actions can be found by them with the `-h` or `--help` option.

As an example with the `list` action:
```sh
./committer list --help
```
