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
    seahorse
    gnome-keyring
    file-roller

    tela-circle-icon-theme

    kdePackages.qtstyleplugin-kvantum
  ];

  programs.seahorse.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.wingej0.enableGnomeKeyring = true;
  programs.ssh.askPassword = "${pkgs.seahorse}/libexec/seahorse/ssh-askpass";
}