{ pkgs ? import <nixos> {} }:

let
  nazelisk = import (../nazelisk/default.nix);
  bazel = nazelisk ./.;
in
  pkgs.mkShell {
    buildInputs = [
      pkgs.hello

      # keep this line if you use bash
      pkgs.bashInteractive
      bazel
    ];
  }
