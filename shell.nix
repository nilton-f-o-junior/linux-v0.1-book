{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    rustc
    cargo
    rustfmt
    clippy
    rust-analyzer
    mdbook
  ];

  # opcional: variáveis de ambiente
  RUST_BACKTRACE = "1";
}
