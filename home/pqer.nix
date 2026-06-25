{ config, pkgs, ... }:

{
	home.username = "pqer";
	home.homeDirectory = "/home/pqer";
	
	home.stateVersion = "26.05";
	
	imports = [
		../home-modules/default.nix
	];

	programs.home-manager.enable = true;
}
