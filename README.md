Dotfile repository
==================

This repository contains a collection of dotfiles for setting up a personalized environment on a Unix-like system. It provides configurations for various tools, such as the shell, editors, and other utilities, that can be symlinked to your home directory.

# Installation
	
Copy the `dotfile` directory to your `home` directory:

```bash
git clone https://github.com/kenryhraval/dotfiles.git ~/dotfiles
```

# Setup

Go to the freshly created `~/dotfiles` directory and execute the resolver that copies the already existing unique dotfiles to the `dotfiles` directory and discards the ones alrady found in the `dotfiles` directory (backup by uncommenting a line in the file `resolver.sh`), after that creates symlinks in the `home` directory for all dotfiles. 

```bash
cd ~/dotfiles
source resolver.sh
```
