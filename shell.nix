{pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "blog";
  buildInputs = with pkgs; [
    nodejs
  ];
  shellHook = ''
		# npm ci --omit=dev
    # npx eleventy --serve --input src
    # exit
  '';
}
