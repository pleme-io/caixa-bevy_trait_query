# nix/modules/nixos.nix — auto-generated from bevy_trait_query.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_trait_query;
in {
  options.services.bevy_trait_query = {
    enable = lib.mkEnableOption "bevy_trait_query";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_trait_query or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
