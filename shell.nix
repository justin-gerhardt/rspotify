with import <nixpkgs> { };

stdenv.mkDerivation {
  name = "rust-env";
  nativeBuildInputs = [
    rustc
    
    cargo

    # Example Build-time Additional Dependencies
    pkgconfig
  ];
  buildInputs = [
    # Example Run-time Additional Dependencies
    openssl
  ];
  propagatedBuildInputs = [ ffmpeg ];

  # Set Environment Variables
  RUST_BACKTRACE = 1;
}
