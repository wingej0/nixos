{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vscode
    # jetbrains.pycharm-community
    mongodb-compass
    insomnia
    unixODBC
    unixODBCDrivers.msodbcsql18
    gImageReader
  ];

  environment.unixODBCDrivers = with pkgs.unixODBCDrivers; [ msodbcsql18 ];
}