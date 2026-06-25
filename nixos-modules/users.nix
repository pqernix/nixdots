{ ... }:

{

	users.users = {
		pqer = {
			isNormalUser = true;
			extraGroups = [ "wheel" "networkmanager" ];
		};
	};
}


