# bsdiff
fork http://www.daemonology.net/bsdiff and fix Makefile. 

## why this project
The latest source code of bsdiff(http://www.daemonology.net/bsdiff/bsdiff-4.3.tar.gz) from homepage cannot compiled,
and the CentOS 7 did not have rpm package from upstream or epel.
so I fork and fix Makefile.

## how to install

+ compile source on CentOS 7
```
make
sudo make install 
```

+ ubuntu 
```
apt-get install -y bsdiff
```

