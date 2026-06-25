{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ../../nixos-modules/default.nix
    ];

  networking.hostName = "elitebook"; 

  time.timeZone = "Asia/Kolkata";
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05"; 
}

