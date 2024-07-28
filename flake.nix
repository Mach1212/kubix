{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    apps.x86_64-linux.default = { type = "app"; program = "${nixpkgs.legacyPackages.x86_64-linux.hello}/bin/hello"; };

  };
}
