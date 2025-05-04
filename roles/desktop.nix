{ config, pkgs, ... }:

{
  imports = [
    ../common/desktop.nix
    ../modules/hyprland.nix
  ];
}
