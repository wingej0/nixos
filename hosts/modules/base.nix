{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Base Packages
    zsh
    zsh-powerlevel10k
    git
    gh
    wget
    vim
    htop
    acpi
    killall
    fzf
    fastfetch
    wallust
    variety
    veracrypt
    remmina
    popsicle
    gparted
    eza
    rclone
    yazi
    btop
    kitty
    lshw

    kdePackages.qtstyleplugin-kvantum
  ];
}