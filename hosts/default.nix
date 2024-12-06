{ hostname, ... }:
{
    imports = 
        if hostname == "darter-pro" then
            [
                # Configuration
                ./darter-pro/configuration.nix

                # Drivers
                ./modules/system76.nix

                # Programs
                ./modules/base.nix
                ./modules/browsers.nix
                ./modules/communication.nix
                ./modules/development.nix
                ./modules/fonts.nix
                ./modules/games.nix
                ./modules/media.nix
                # ./modules/nordvpn.nix
                ./modules/office.nix
                ./modules/shells.nix

                # User and home-manager
                ./modules/users.nix
            ]
        else
            [ ];
}