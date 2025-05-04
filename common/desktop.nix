{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox-devedition
    dolphin
    ghostty
  ];
}
