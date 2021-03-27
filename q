#!/bin/sh
nix-packages-with-cache | fzf -m -q "$*"
