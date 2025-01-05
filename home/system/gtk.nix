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

                "org/gnome/shell" = {
                    disable-user-extensions = false;
                
                    favorite-apps = [
                        "vivaldi-stable.desktop"
                        "firefox.desktop"
                        "Mailspring.desktop"
                        "chrome-mdpkiolbdkhdjpekfbkbmhigcaggjagi-Default.desktop"
                        "org.telegram.desktop.desktop"
                        "com.sindresorhus.Caprine.desktop"
                        "discord.desktop"
                        "chrome-kjbdgfilnfhdoflbpgamdcdgpehopbep-Default.desktop"
                        "io.github.alainm23.planify.desktop"
                        "kitty.desktop"
                        "code.desktop"
                        "obsidian.desktop"
                        "onlyoffice-desktopeditors.desktop"
                        "com.obsproject.Studio.desktop"
                        "org.kde.kdenlive.desktop"
                        "org.gnome.Nautilus.desktop"
                    ];


                    # `gnome-extensions list` for a list
                    enabled-extensions = [
                        "AlphabeticalAppGrid@stuarthayhurst"
                        "appindicatorsupport@rgcjonas.gmail.com"
                        "blur-my-shell@aunetx"
                        "caffeine@patapon.info"
                        "clipboard-indicator@tudmotu.com"
                        "dash-to-dock@micxgx.gmail.com"
                        "tiling-assistant@leleat-on-github"
                        "user-theme@gnome-shell-extensions.gcampax.github.com"
                    ];
                };

                "org/gnome/mutter" = {
                    dynamic-workspaces = true;
                    workspaces-only-on-primary = true;
                };

                "org/gnome/shell/extensions/user-theme" = {
                    name = "Orchis";
                };

                "org/gnome/desktop/interface" = {
                    show-battery-percentage = true;
                    enable-hot-corners = false;
                    clock-format = "12h";
                    clock-show-weekday = true;
                };

                "org/gnome/desktop/peripherals/touchpad" = {
                    tap-to-click = true;
                };

                "org/gnome/desktop/wm/keybindings" = {
                    close = ["<Super>q"];
                };

                "org/gnome/settings-daemon/plugins/media-keys" = {
        
                    custom-keybindings = [
                        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
                        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
                        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/"
                        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/"
                        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/"
                    ];
                };

                "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
                    name = "Terminal";
                    command = "kitty";
                    binding = "<Super>Return";
                };

                "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
                    name = "Files";
                    command = "nautilus";
                    binding = "<Shift><Super>Return";
                };

                "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
                    name = "Next Wallpaper";
                    command = "variety -n";
                    binding = "<Super>w";
                };

                "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" = {
                    name = "Previous Wallpaper";
                    command = "variety -p";
                    binding = "<Shift><Super>w";
                };

                "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4" = {
                    name = "Favorite Wallpaper";
                    command = "variety -f";
                    binding = "<Alt>f";
                };

                "org/gnome/shell/extensions/dash-to-dock" = {
                    multi-monitor = true;
                    dock-position = "LEFT";
                    dash-max-icon-size = 24;
                    hot-keys = false;
                    running-indicator-style = "DASHES";
                    show-mounts = false;
                    show-trash = false;
                };

                "org/gnome/shell/extensions/blur-my-shell/panel" = {
                    pipeline = "pipeline_default_rounded";
                };

                "org/gnome/shell/extensions/tiling-assistant" = {
                    window-gap = 8;
                    single-screen-gap = 8;
                    maximize-with-gap = true;
                    dynamic-keybinding-behavior = 2;
                    tile-edit-mode = ["<Super>g"];
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
                name = "Tela-circle";
                package = pkgs.tela-circle-icon-theme;
            };

            cursorTheme = {
                name = "Bibata-Modern-Classic";
                package = pkgs.bibata-cursors;
                size = 24;
            };
        };
    };           
}