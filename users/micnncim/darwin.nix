{ config, pkgs, lib, ... }:

# TODO: Replace the username with yours.
let username = "micnncim";
in
{
  nix = {
    configureBuildUsers = true;

    # Enable experimental Nix command and Flakes.
    extraOptions = ''
      experimental-features = nix-command flakes
    '' + lib.optionalString (pkgs.system == "aarch64-darwin") ''
      extra-platforms = x86_64-darwin aarch64-darwin
    '';
  };
}
