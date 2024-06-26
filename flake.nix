{
  description = "Rust nightly development shell with subxt";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    rust-overlay.url = "github:oxalica/rust-overlay";
    rust-overlay.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    nixpkgs,
    rust-overlay,
    ...
  }: let
    system = "x86_64-linux";
  in {
    devShells."${system}".default = let
      overlays = [(import rust-overlay)];
      pkgs = import nixpkgs {
        inherit system overlays;
      };
    in
      pkgs.mkShell {
        packages = with pkgs; [
          subxt
        ];
        buildInputs = with pkgs; [
          protobuf
          clang
          (
            rust-bin.fromRustupToolchainFile ./rust-toolchain.toml
          )
        ];
        LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib/:/run/opengl-driver/lib/";
        LIBCLANG_PATH = "${pkgs.libclang.lib}/lib";
      };
  };
}
