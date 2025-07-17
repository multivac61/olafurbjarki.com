{
  description = "olafurbjarki.com website";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    treefmt-nix.url = "github:numtide/treefmt-nix";
    treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      treefmt-nix,
      systems,
      ...
    }:
    let
      eachSystem =
        f: nixpkgs.lib.genAttrs (import systems) (system: f system nixpkgs.legacyPackages.${system});

      systemOutputs = eachSystem (
        _system: pkgs:
        let
          treefmtEval = treefmt-nix.lib.evalModule pkgs {
            programs = {
              nixfmt.enable = true;
              deadnix.enable = true;
            };
          };
          default =
            let
              src = ./.;
              version = (builtins.fromJSON (builtins.readFile "${src}/package.json")).version;
              pname = "olafurbjarki.com";
            in
            pkgs.stdenv.mkDerivation {
              inherit pname src version;

              nativeBuildInputs = with pkgs; [
                nodejs
                pnpm.configHook
              ];

              pnpmDeps = pkgs.pnpm.fetchDeps {
                inherit pname version src;
                hash = "sha256-5X6nPeDRtyD0B4mN+NfhDg+JUQcuwaHihjPB7kXoY4k=";
              };

              buildPhase = "pnpm check && pnpm build"; # check fixes: Cannot find base config file "./.svelte-kit/tsconfig.json" [tsconfig.json]

              installPhase = "cp -r build $out/";
            };

        in
        {
          packages.default = default;

          devShells.default = pkgs.mkShell {
            packages = with pkgs; [ pnpm ];
            inputsFrom = [ default ];
          };

          formatter = treefmtEval.config.build.wrapper;
          checks.formatting = treefmtEval.config.build.check self;
        }
      );
    in
    {
      packages = nixpkgs.lib.mapAttrs (_system: outputs: outputs.packages) systemOutputs;
      devShells = nixpkgs.lib.mapAttrs (_system: outputs: outputs.devShells) systemOutputs;
      formatter = nixpkgs.lib.mapAttrs (_system: outputs: outputs.formatter) systemOutputs;
      checks = nixpkgs.lib.mapAttrs (_system: outputs: outputs.checks) systemOutputs;
    };
}
