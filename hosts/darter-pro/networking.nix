{ config, pkgs, ... }:
{
  # Enable networking
  networking.hostName = "darter-pro"; # Define your hostname.
  networking.networkmanager.enable = true;
  # networking.wireguard.enable = true;
  # networking.enableIPv6  = false;

  # networking.firewall = {
  #   checkReversePath = false;
  #   allowedTCPPorts = [ 443 ];
  #   allowedUDPPorts = [ 1194 ];
  # };

  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  environment.systemPackages = with pkgs; [
    
  ];
}