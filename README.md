Dotfile repository
==================

This repository contains a collection of dotfiles for setting up a personalized environment on a Unix-like system. It provides configurations for the shell, editors, and other utilities, adding them to your home directory with symlinks.

## Installation
	
Copy the `dotfile` directory to your `home` directory:

```bash
git clone https://github.com/kenryhraval/dotfiles.git ~/dotfiles
```

## Setup

Go to the `~/dotfiles` directory and execute the `resolver.sh` script. It will copy existing dotfiles from your home directory to the `~/dotfiles` directory. It will discard your existing dotfiles only when it finds corresponding duplicates in this repository (even then, you can backup them by uncommenting a line in the `resolver.sh` script). After that it will create symlinks in the `home` directory for all dotfiles. 

```bash
cd ~/dotfiles
source resolver.sh
```
