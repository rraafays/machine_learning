{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
  packages = [
    pkgs.python312
    pkgs.python312Packages.pip
  ];
  shellHook = ''
    python -m venv .venv
    source .venv/bin/activate
    pip install -r requirements.txt
  '';
}
