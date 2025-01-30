{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    obsidian
    onlyoffice-bin
    libreoffice
    evince
    anytype
    mailspring
  ];
}