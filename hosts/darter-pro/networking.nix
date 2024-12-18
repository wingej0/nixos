{ config, pkgs, ... }:
{
  # Enable networking
  networking.hostName = "darter-pro"; # Define your hostname.
  networking.networkmanager.enable = true;
  networking.wireguard.enable = true;

  networking.firewall = {
    checkReversePath = false;
    allowedTCPPorts = [ 443 ];
    allowedUDPPorts = [ 1194 ];
    allowedTCPPortRanges = [ { from = 1714; to = 1764; } ];
    allowedUDPPortRanges = [ { from = 1714; to = 1764; } ];
  };

  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  environment.systemPackages = with pkgs; [
    
  ];
}