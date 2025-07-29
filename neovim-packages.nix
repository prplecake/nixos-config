{ pkgs, ... }:

{
    neovim = with pkgs; [
      lua51Packages.lua
      luajitPackages.luarocks
      neovim
      ripgrep
      wget
      fd
      groff
      php
      php84Packages.composer
      cargo
      julia-bin
      tree
    ];
    
}

