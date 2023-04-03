{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.help2man.url = "github:Freed-Wu/help2man";
  outputs = { self, nixpkgs, flake-utils, help2man }:
    flake-utils.lib.eachDefaultSystem
      (system:
        with nixpkgs.legacyPackages.${system};
        with python3.pkgs;
        {
          formatter = nixpkgs-fmt;
          packages.default = buildPythonApplication rec {
            pname = "setuptools-generate";
            version = "";
            src = self;
            format = "pyproject";
            disabled = pythonOlder "3.6";
            propagatedBuildInputs = [
              setuptools
              click
              help2man.packages.${system}.default
              markdown-it-py
              setuptools
              shtab
              tomli
            ];
            pythonImportsCheck = [
              "setuptools_generate"
            ];
          };
        }
      );
}
