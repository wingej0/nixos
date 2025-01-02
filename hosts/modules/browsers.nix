{ config, pkgs, ... }:
{
  # Install firefox.
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    brave
    google-chrome

    # Override to work with Plasma 6
    (vivaldi.overrideAttrs
      (oldAttrs: {
        dontWrapQtApps = false;
        dontPatchELF = true;
        nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [pkgs.kdePackages.wrapQtAppsHook];
      }))
  ];
}