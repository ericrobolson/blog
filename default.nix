with import <nixpkgs> {};

stdenv.mkDerivation rec {
    name = "env";
    env = buildEnv { name = name; paths = buildInputs; };
    buildInputs = [
        # Rust
        cargo
        rustc
        rustfmt
    ];

    # Load env vars in shell.
    shellHook = ''set -a; source .env;'';
}
