{ config, pkgs, ... }:

{
  programs.adb.enable = true;
  users.users.prplecake.extraGroups = [ "adbusers" ];
}
