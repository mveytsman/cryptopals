{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };

        elixir = pkgs.beam.packages.erlang.elixir;
        elixir-ls = pkgs.beam.packages.erlang.elixir_ls;
        locales = pkgs.glibcLocales;
      in {
        devShell = with pkgs;
          mkShell {
            buildInputs = [ elixir locales ];

            # Decorative prompt override so we know when we're in a dev shell
            shellHook = ''
              export PS1="\[\e[1;33m\][dev]\[\e[1;34m\] \w $ \[\e[0m\]"
              mkdir -p .nix-mix
              mkdir -p .nix-hex
              export MIX_HOME=$PWD/.nix-mix
              export HEX_HOME=$PWD/.nix-hex
              export PATH=$MIX_HOME/bin:$PATH
              export PATH=$MIX_HOME/escripts:$PATH
              export PATH=$HEX_HOME/bin:$PATH
              export LANG=en_US.UTF-8
              export ERL_AFLAGS="-kernel shell_history enabled"

              [[ -f .env ]] && source .env
            '';
          };

      });

}
