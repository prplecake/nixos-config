{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
      lua51Packages.lua
      luajitPackages.luarocks
    ];
}
