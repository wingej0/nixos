{ config, lib, pkgs, ... }:
{
    config = lib.mkIf (config.specialisation != {}) {
        # Enable the X11 windowing system.
        services.xserver.enable = true;
        
        services.xserver.displayManager.gdm.enable = true;
        services.xserver.desktopManager.gnome.enable = true;

        environment.systemPackages = with pkgs; [
            # Gnome extensions
            pkgs.gnome-tweaks
            gnomeExtensions.dash-to-dock
            gnomeExtensions.blur-my-shell
            gnomeExtensions.appindicator
            gnomeExtensions.caffeine
            gnomeExtensions.clipboard-indicator
            gnomeExtensions.alphabetical-app-grid
            gnomeExtensions.tiling-assistant
            gnomeExtensions.user-themes
            gnomeExtensions.gnordvpn-local

            gnome-calculator
            gnome-remote-desktop
        ];

        services.flatpak.enable = true;
    };
}
