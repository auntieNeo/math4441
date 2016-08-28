{ stdenv, ncurses, units, pstoedit, gl2ps }:

stdenv.mkDerivation rec {
  name = "math4441";

  buildInputs = [ ncurses units pstoedit gl2ps ];
}
