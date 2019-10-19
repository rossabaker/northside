let

  # See https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs for more information on pinning
  nixpkgs = builtins.fetchTarball {
    # Commit hash for nixos-unstable as of 2019-10-20
    url = https://github.com/NixOS/nixpkgs/archive/430e5ce04c7943323e573c40d15c0e7e109cc72a.tar.gz;
    # Hash obtained using `nix-prefetch-url --unpack <url>`
    sha256 = "1c0n74xf7w78650l65r4p85vr59apg5zylb53s2q8hhbhv7nk0p7";
  };

in

{ pkgs ? import nixpkgs {} }:

with pkgs;

mkShell {
  buildInputs = [
    hugo
  ];
}
