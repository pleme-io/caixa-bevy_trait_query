# nix/modules/home-manager.nix — auto-generated from bevy_trait_query.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_trait_query; in {
  options.programs.bevy_trait_query = {
    enable = lib.mkEnableOption "bevy_trait_query";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_trait_query or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
