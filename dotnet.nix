{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        dotnet-sdk
        mono
    ];
}
