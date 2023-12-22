#!/bin/bash

#################
# This script creates symlinks from the home direction to any desired dotfiles in ~/dotfiles
#################

# Variables 

user=james
dir=/home/$user/dotfiles
files="alacritty.yml"

# Begin 

echo "Changing to the $dir directory"
cd /home/$user/$dir
echo "...done"

for file in $files; do
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file /home/$user/.$file
done

