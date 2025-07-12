{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    rpi-imager
  ];
}
