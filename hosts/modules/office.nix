{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    obsidian
    onlyoffice-bin
    libreoffice
    planify
    kdePackages.kmail
    kdePackages.kmail-account-wizard
    # mailspring
  ];
}