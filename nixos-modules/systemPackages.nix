{ pkgs, inputs, config,  ... }:

{
	programs.niri.enable = true;

	environment.systemPackages = with pkgs; [
		git
		curl
		wget
		btop
		alacritty
		ungoogled-chromium
		zapzap
		vesktop
		vim
	];
}
