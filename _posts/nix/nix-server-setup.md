---

title: NixOS Server Setup
date: 2022-1-30 18:09:24 +05:30
tags: [nix,nixos]
description: Setting up nixos on Cloud

---

# NIX SERVER-SETUP
# currently none provide with nix-images thus have to use conversion !

## SSH to server and run

sudo -s
curl https://raw.githubusercontent.com/elitak/nixos-infect/master/nixos-
infect | NIX_CHANNEL=nixos-21.11 bash -x

## You will be logged out after OS is converted to NixOS ! Login again and
proceed .

## add to /etc/nixos/configuration.nix for default shell

users.users.root.shell = pkgs.fish;

## copy local ~/.ssh/id_ed25519.pub to server or create a new one as below

ssh-keygen -t ed25519 -C 'hi.creator54@gmail.com'
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub #paste this in github

## Fetching configs

nix-env -iA nixos.home-manager
nix-shell -p git --run "git clone git@github.com:creator54/nixos-cfg --recursive -
b server ~/.config/nixpkgs"
home-manager switch

Setup Complete !!


