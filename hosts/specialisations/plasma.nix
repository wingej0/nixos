{ config, lib, pkgs, ... }:
{
    config = lib.mkIf (config.specialisation != {}) {
        # Enable the X11 windowing system.
        services.xserver.enable = true;
        services.displayManager.sddm.enable = true;
        services.desktopManager.plasma6 = {
            enable = true;
        };
        environment.plasma6 = {
            excludePackages = [
                pkgs.kdePackages.kwallet
                pkgs.kdePackages.ksshaskpass
                pkgs.kdePackages.kwalletmanager
            ];
        };

        services.flatpak.enable = true;
    };
}
