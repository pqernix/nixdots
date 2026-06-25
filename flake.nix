{

	description = "System Flake";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

		home-manager.url = "github:nix-community/home-manager/master";
		home-manager.inputs.nixpkgs.follows = "nixpkgs";
	};
	

	outputs = { self, nixpkgs, home-manager, ... }@inputs: {
		nixosConfigurations = {
			"elitebook" = nixpkgs.lib.nixosSystem {
				system = "x86_64-linux";
				specialArgs = {
					inherit inputs;
				};
				modules = [
					./hosts/elitebook/configuration.nix
					 home-manager.nixosModules.home-manager

						{
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;

						home-manager.users.pqer = import ./home/pqer.nix;
						}
				];
			};
		};
	};
}
