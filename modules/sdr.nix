{ config, pkgs, ... }:

{
  # NixOS doesn't come with a "plugdev" group, so create it
  users.groups.plugdev.gid = 1000;

  users.users.prplecake.extraGroups = [
    "plugdev"
  ];

  services.udev.packages = with pkgs; [ rtl-sdr ];
  
  environment.systemPackages = with pkgs; [
    pkg-config
    libusb1
    rtl-sdr
    sdrpp
    gqrx
  ];
}
