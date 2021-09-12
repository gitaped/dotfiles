# dotfiles

## Install

Install dotfiles using this curl

`curl -fsSL https://raw.githubusercontent.com/apeduru/dotfiles/master/install | bash`

## Usage

`make up`

Run pre-up hooks, symlink dotfiles, and run post-up hooks

`make sym`

Symlink dotfiles only

`make down`

Run pre-down hooks, unsymlink dotfiles, and run post-down hooks

`make ls`

List all the symlinks
