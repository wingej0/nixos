{ hostname, ... }:
{
    imports = 
        if hostname == "darter-pro" then
            [
                # Configuration
                ./darter-pro/configuration.nix

                # Drivers
                ./modules/system76.nix

                # Network settings
                ./darter-pro/networking.nix

                # Desktops (Gnome is the default)
                # For Cosmic or Qtile, select at boot
                ./specialisations/cosmic.nix
                ./specialisations/gnome.nix
                ./specialisations/qtile.nix

                # Programs
                ./modules/base.nix
                ./modules/browsers.nix
                ./modules/communication.nix
                ./modules/development.nix
                ./modules/fonts.nix
                ./modules/games.nix
                ./modules/input-remapper.nix
                ./modules/media.nix
                ./modules/mongodb.nix
                ./modules/nordvpn.nix
                ./modules/office.nix
                ./modules/shells.nix
                ./modules/virtualization.nix

                # User and home-manager
                ./modules/users.nix
            ]
        else if hostname == "dis-winget" then 
            [
                # Configuration
                ./dis-winget/configuration.nix

                # Drivers
                ./modules/nvidia.nix

                # Networking
                ./dis-winget/networking.nix

                # Cron
                ./dis-winget/cron.nix

                # Desktop
                ./specialisations/gnome.nix

                # Programs
                ./modules/base.nix
                ./modules/browsers.nix
                ./modules/development.nix
                ./modules/fonts.nix
                ./modules/mongodb.nix
                ./modules/shells.nix
                ./modules/python.nix

                # User and home-manager
                ./modules/users.nix
            ]
        else
            [ ];
}
