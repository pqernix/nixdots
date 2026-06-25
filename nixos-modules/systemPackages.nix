{ pkgs, inputs, config,  ... }:

{
	programs.niri.enable = true;

	environment.systemPackages = with pkgs; [
		curl
		wget
		btop
		vim
		git
		vesktop
		zapzap
		alacritty
		ungoogled-chromium
	];
}
