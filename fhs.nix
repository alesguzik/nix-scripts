{
  pkgs ? import <nixpkgs> {},
  # This allows us to provide a command to run via `--argstr run COMMAND`.
  run ? "bash"
}:
with pkgs; (buildFHSUserEnv {
  name = "my-fhs-env";
  targetPkgs = pkgs: (with pkgs; [
    nodejs
    zlib
    alsa-lib
    freetype
    xorg.libX11
  ]);
  runScript = "${run}";
}).env
