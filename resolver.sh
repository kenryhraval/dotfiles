#!/bin/bash

# 1) overrides already existing dotfiles in the TARGET_DIR if they are within the DOTFILES_DIR 
# 2) moves all dotfiles within the TARGET_DIR to the DOTFILES_DIR and creates symlinks within the TARGET_DIR

DOTFILES_DIR=~/dotfiles

# (your home directory)
TARGET_DIR=~

# move already existing unique dotfiles 
for file in "$TARGET_DIR"/.*; do

    basefile=$(basename "$file")

    # skip unwanted files: . (current), .. (parent), the dotfiles directory, symlinks, or existing files in the dotfiles directory
    if [[ "$file" == "$TARGET_DIR/." || "$file" == "$TARGET_DIR/.." || "$file" == "$DOTFILES_DIR" || -L "$file" || -e "$DOTFILES_DIR/$basefile" ]]; then
        continue
    fi

    # ensure the file is a regular file (not a directory)
    if [ -f "$file" ]; then
        mv "$file" "$DOTFILES_DIR/$basefile"
    fi
done


for file in "$DOTFILES_DIR"/.*; do

  # we don't want symlinks for these
  if [[ "$file" == "$DOTFILES_DIR/." || "$file" == "$DOTFILES_DIR/.." ]]; then
    continue
  fi
  
  basefile=$(basename "$file")
  
  target="$TARGET_DIR/$basefile"

  # if the dotfile file already exists 
  if [ -e "$target" ] || [ -L "$target" ]; then
    # you may want to backup, in which case uncomment this
    # mv "$target" "$target.bak"
    true	  
  fi

  # create the symlink
  ln -s "$file" "$target"
done

echo "symlinking completed"

