{ config, pkgs, inputs, username, ... }:
{
    home-manager.users.${username} = {
        dconf = {
            enable = true;
            settings = {
                "org/gnome/desktop/interface" = {
                    color-scheme = "prefer-light";
                };
                "org/virt-manager/virt-manager/connections" = {
                    autoconnect = ["qemu:///system"];
                    uris = ["qemu:///system"];
                };
            };
        };

        gtk = {
            enable = true;
        
            gtk3 = {
                extraConfig = {
                    gtk-application-prefer-dark-theme = 0;
                };
            };

            gtk4 = {
                extraConfig = {
                    gtk-application-prefer-dark-theme = 0;
                };
            };

            font = {
                name = "Fira Code Nerd Font";
                size = 11;
            };

            theme = {
                name = "Orchis";
                package = pkgs.orchis-theme;
            };

            iconTheme = {
                name = "Tela-dark";
                package = pkgs.tela-icon-theme;
            };

            cursorTheme = {
                name = "Bibata-Modern-Classic";
                package = pkgs.bibata-cursors;
                size = 24;
            };
        };
    };           
}