#!/bin/bash


os=$(uname -s)
echo "Detected OS: $os"

if [[ "$os" == "Linux" ]]; then
	echo "Running Linux-specific setup..."
	stow -t "$HOME" -R --verbose=2 linux
elif [[ "$os" == "Darwin" ]]; then
	echo "No macOS specific setup required."
fi

stow -t "$HOME" -R --verbose=2 all
