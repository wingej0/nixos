{ config, pkgs, inputs, username, ... }:
{
    imports = [
        # These imports provide the latest git commit of Qtile.
        # If they are commented out, the release version will be installed.
        # (_: { nixpkgs.overlays = [ inputs.qtile-flake.overlays.default ]; })
        # ./../overlays/qtile-extras-overlay.nix
        ./../../home/system/gtk.nix
    ];

    specialisation = {

        qtile-desktop.configuration = {
            # Enable the X11 windowing system.
            services.xserver.enable = true;

            services.displayManager.sddm.enable = true;
            services.xserver.windowManager.qtile = {
                enable = true;
                extraPackages = python3Packages: with python3Packages; [
                    qtile-extras
                ];
            };
            
            # Enable Qtile
            # services.displayManager.sddm.enable = true;
            # services.xserver.windowManager.qtile = {
            #     package = inputs.qtile-flake.overlays.default;
            #     enable = true;
            #     extraPackages = python3Packages: with python3Packages; [
            #         qtile-extras
            #     ];
            # };

            hardware.bluetooth.enable = true;
            services.udisks2.enable = true;
            services.gvfs.enable = true;

            environment.systemPackages = with pkgs; [
                pavucontrol
                python3 # Needed for update widget

                # Portals
                xdg-desktop-portal
                xdg-desktop-portal-wlr
                xdg-desktop-portal-gtk

                # Theme stuff
                tela-circle-icon-theme
                bibata-cursors

                # File Manager
                xfce.thunar

                # Wayland Programs
                rofi-wayland
                grim
                slurp
                swappy
                wf-recorder
                zenity
                wl-clipboard
                cliphist
                swayidle
                swaylock-effects
                kdePackages.polkit-kde-agent-1
                kdePackages.kwallet
                wlogout
                ffmpeg
                wlr-randr
                dunst
                playerctl
                brightnessctl
                xwayland
                nwg-look

                # X11 Programs
                picom
                haskellPackages.greenclip
                numlockx
                flameshot
                betterlockscreen
                arandr
                peek
            ];

            programs.xwayland.enable = true;
            programs.dconf.enable = true;
            services.libinput.enable = true;

            xdg.portal = {
                enable = true;
                config.common.default = "*";
                extraPortals = with pkgs; [
                    xdg-desktop-portal-wlr
                    xdg-desktop-portal-gtk
                ];
            };

            services.flatpak.enable = true;

            # Enable pam for swaylock, so it will actually unlock
            security.pam.services.swaylock = {};
            security.pam.services.wingej0.kwallet = {
                enable = true;
                package = pkgs.kdePackages.kwallet;
            };

            environment.sessionVariables = {
                NIXOS_OZONE_WL = "1";
            };
        };
    };
}
