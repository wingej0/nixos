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

                # Programs
                ./modules/base.nix
                ./modules/browsers.nix
                ./modules/communication.nix
                ./modules/development.nix
                ./modules/fonts.nix
                ./modules/games.nix
                ./modules/input-remapper.nix
                ./modules/media.nix
                ./modules/nordvpn.nix
                ./modules/office.nix
                ./modules/shells.nix
                ./modules/virtualization.nix

                # User and home-manager
                ./modules/users.nix
            ]
        else
            [ ];
}