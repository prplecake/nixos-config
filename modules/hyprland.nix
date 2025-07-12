{ config, pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
  programs.hyprlock.enable = true;

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
        user = "greeter";
      };
    };
  };

  fonts = {
    fontDir.enable = true;
    packages = with pkgs; [
      font-awesome
      jetbrains-mono
    ];
  };
  
  environment.systemPackages = with pkgs; [
    kdePackages.kdegraphics-thumbnailers
    libsForQt5.ffmpegthumbs
    kdePackages.qtsvg
    libsForQt5.kio-extras
    qt6.qtwayland
    xorg.libxcb
    hyprpolkitagent
    hypridle
    hyprlock

    light
    mako
    waybar
    wofi
  ];
}
