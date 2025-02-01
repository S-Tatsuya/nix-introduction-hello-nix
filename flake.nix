{
  description = "hello package written in Rust";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs }:
  flake-utils.lib.eachDefaultSystem (
    sysmte:
    let
      pkgs = nixpkgs.legacyPackages.${system}
    in
    {
      packages = {
        hello = pkgs.hello;
	default = pkgs.hello;
      };
    }
  );
} 
