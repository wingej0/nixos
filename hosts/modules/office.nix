{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    obsidian
    onlyoffice-bin
    libreoffice
  ];
}