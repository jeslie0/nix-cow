export PATH="$coreutils/bin"
source $stdenv/setup
mkdir -p $out/bin
cp $src $out/bin/cowflake
chmod +x $out/bin/cowflake
wrapProgram $out/bin/cowflake --prefix PATH : ${cowsay}/bin ;
