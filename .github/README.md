# Dotfiles

This repo contains my personal dotfiles. It uses the bare Git repository approach as documented by Atlassian [here](https://www.atlassian.com/git/tutorials/dotfiles).

## Usage

Run `curl -s https://raw.githubusercontent.com/wilson-matthew/dotfiles/refs/heads/main/.config/init.sh | bash`

This will clone the git repo to `$HOME/.dotfiles` and place the dotfiles in the `$HOME` folder. If there are any conflicting files it will backup the existing files to `.config-backup`.

You can then run `. ~/.bash_profile` to make the changes to `.bash_profile` take effect.
