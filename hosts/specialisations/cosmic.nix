{ config, pkgs, lib, inputs, username, ... }:
{
    imports = [
        {
            nix.settings = {
                substituters = [ "https://cosmic.cachix.org/" ];
                trusted-public-keys = [ "cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE=" ];
            };
        }
        inputs.nixos-cosmic.nixosModules.default
    ];

    specialisation = {
        cosmic-desktop.configuration = {

            services.displayManager.cosmic-greeter.enable = true;
            services.desktopManager.cosmic.enable = true;

            environment.systemPackages = with pkgs; [
                # Gnome stuff
                # gnome-online-accounts
                # gnome-calendar

                # Clipboard manager
                cosmic-ext-applet-clipboard-manager
            ];

            programs.dconf.enable = true;

            environment.sessionVariables = {
                COSMIC_DATA_CONTROL_ENABLED = "1"; 
            };

            services.flatpak.enable = true;
        };
    };
}