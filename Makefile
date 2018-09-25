CFLAGS		+=	-O3 -lbz2

PREFIX		?=	/usr/local
PREFIX_MAN	?=      /usr/share
INSTALL_PROGRAM	?=	${INSTALL} -cp
INSTALL_MAN	?=	${INSTALL} -cp

all:		bsdiff bspatch
bsdiff:		bsdiff.c
bspatch:	bspatch.c

install:
	${INSTALL_PROGRAM} bsdiff bspatch ${PREFIX}/bin
	${INSTALL_MAN} bsdiff.1 bspatch.1 ${PREFIX_MAN}/man/man1

