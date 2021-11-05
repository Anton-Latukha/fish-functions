function uploadHaddocks

set dir (mktemp -d /tmp/dist-docs.XXXXXX)

command cabal v2-haddock --builddir=$dir --haddock-for-hackage --enable-doc

command cabal upload -d --publish $dir/*-docs.tar.gz

rm -rf $dir

sed -e dir

end
