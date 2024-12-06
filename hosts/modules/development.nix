{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vscode
    jetbrains.pycharm-community
    mongodb-compass
    insomnia
    # mongodb
    # mongosh
    unixODBC
    unixODBCDrivers.msodbcsql18
    gImageReader
  ];

  environment.unixODBCDrivers = with pkgs.unixODBCDrivers; [ msodbcsql18 ];

  # Enable mongodb
#   services.mongodb = {
#     enable = true;
#     enableAuth = true;
#     initialRootPassword = "mongodbroot";
#     bind_ip = "0.0.0.0";
#   };
}