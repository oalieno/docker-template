# dirb
wget -O dirb222.tar.gz https://sourceforge.net/projects/dirb/files/dirb/2.22/dirb222.tar.gz/download
tar xf dirb222.tar.gz
cd dirb222
chmod +x ./configure
./configure
make
cp dirb /usr/local/bin
cd ..
rm dirb222.tar.gz
rm -rf dirb222

# one_gadget
gem install one_gadget

# seccomp-tools
gem install seccomp-tools
