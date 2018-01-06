function build_one
{
./configure \
--prefix=$PREFIX \
--disable-shared \
--enable-static \
--enable-pic \
--enable-strip \
--host=$CONFIGURE_HOST \
--cross-prefix=$CONFIGURE_CROSS_PREFIX \
--sysroot=$PLATFORM \
--extra-cflags="-Os -fpic" \
--extra-ldflags="" \

$ADDITIONAL_CONFIGURE_FLAG
make clean
make -j$NUMBER_OF_CORES
make install
}

build_one
