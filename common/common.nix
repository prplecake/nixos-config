{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    tmux
    neovim
    btop
    progress
  ];
}
