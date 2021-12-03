export PATH="$coreutils/bin"
source $stdenv/setup
mkdir -p $out/bin
cp $src $out/bin/cow
chmod +x $out/bin/cow
wrapProgram $out/bin/cow --prefix PATH : ${cowsay}/bin ;
