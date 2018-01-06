function build_one
{
./configure $FLAGS \
--enable-pic \
--enable-strip \
--prefix=$PREFIX

make clean
make -j$NUMBER_OF_CORES
make install
}

build_one
