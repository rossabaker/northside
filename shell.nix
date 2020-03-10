let

  # See https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs for more information on pinning
  nixpkgs = builtins.fetchTarball {
    # Commit hash for nixos-unstable as of 2019-10-20
    url =
      "https://github.com/NixOS/nixpkgs/archive/63ed2bf3c3c39b90af4398a1f047de3bcc27e176.tar.gz";
    # Hash obtained using `nix-prefetch-url --unpack <url>`
    sha256 = "1yrk29cxb8yv0ziin4bw1rwdjmmm5i2m8wdc13xqhfhc79d4hnv6";
  };

in { pkgs ? import nixpkgs { } }:

with pkgs;

mkShell { buildInputs = [ hugo ncftp ]; }
