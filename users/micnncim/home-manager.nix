{ config, lib, pkgs, ... }:

let
  # TODO: Replace the username with yours.
  username = "micnncim";
  inherit (pkgs) stdenv;
in
{
  home.stateVersion = "22.11";

  xdg.enable = true;

  #---------------------------------------------------------------------
  # Packages
  #---------------------------------------------------------------------

  # Packages I always want installed.
  home.packages = with pkgs; [
    hello
    fzf
  ];

  #---------------------------------------------------------------------
  # Env vars and dotfiles
  #---------------------------------------------------------------------

  home.homeDirectory = "/Users/${username}";

  #---------------------------------------------------------------------
  # Programs
  #---------------------------------------------------------------------

  programs.home-manager.enable = true;

  programs.bash.enable = true;

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
