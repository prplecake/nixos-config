{ config, pkgs, lib, ... }:

{
  #nixpkgs.overlays = [
  #  (final: prev: {
  #    todoist-electron = prev.todoist-electron.overrideAttrs (finalAttrs: previousAttrs: {
  #      version = "9.15.0";
  #      src = final.fetchurl {
  #        url = "https://electron-dl.todoist.com/linux/Todoist-linux-9.15.0-x86_64-latest.AppImage";
  #        hash = "sha256-6VVusG0Svel6dk4IRC7n1ZXZMh3IoB5bv7oQBzXWspQ=";
  #      };
  #    });
  #  })
  #];

  environment.systemPackages = with pkgs; [
    todoist-electron
  ];
}
