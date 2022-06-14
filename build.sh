# To build from scratch, uncomment the next two lines
# make clean
# rm -f Makefile

# Make sure your PKG_CONFIG_PATH is set correctly
export PY_CFLAGS="$(pkg-config --cflags python3-embed)"
export PY_LDFLAGS="$(pkg-config --libs python3-embed)"

# Now do the standard things...
autoconf
./configure --with-cflags="$PY_CFLAGS" --with-libs="$PY_LDFLAGS"
make -j10 |& tee make.out
