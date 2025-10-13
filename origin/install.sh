
tar Jxf bsdiff_4.3-23.debian.tar.xz
tar zxf bsdiff_4.3.orig.tar.gz
tar zxf bzip2-1.0.8.tar.gz -C bsdiff-4.3
mv bsdiff-4.3/bzip2-1.0.8  bsdiff-4.3/bzip2

cp debian/patches/*.patch bsdiff-4.3

cd bsdiff-4.3
ls -alh

patch < 10-no-bsd-make.patch 
patch < 20-CVE-2014-9862.patch
patch < 30-bug-632585-mmap-src-file-instead-of-malloc-read-it.patch
patch < 31-bug-632585-mmap-dst-file-instead-of-malloc-read-it.patch
patch < 32-bug-632585-use-int32_t-instead-off_t-for-file-size.patch
patch < 33-CVE-2020-14315.patch

patch < 40-include-bzip2-src-bsdiff.patch
patch < 41-include-bzip2-src-bspatch.patch
patch < 42-Makefile-fix.patch

make 
sudo make install


