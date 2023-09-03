sudo pacman -S tree-sitter libgccjit
./autogen.sh
./configure --with-native-compilation=aot \
            --with-tree-sitter --with-json --with-mailutils
sudo make
sudo make install
sudo make clean
sudo make distclean
