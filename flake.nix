{
	description = "Tooling needed for managing a rpi cluster";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
		flake-utils.url = "github:numtide/flake-utils";
	};

	outputs = { nixpkgs, flake-utils, ... }:
		flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
			let
				pkgs = import nixpkgs {
					inherit system;
				};
			in
			{
				devShells.default = pkgs.mkShell {
					buildInputs = with pkgs; [
						kubectl kubernetes-helm
					];
				};
			}
		);
}
