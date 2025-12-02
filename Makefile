CFLAGS		+=	-O3  

PREFIX		?=	/usr/local
INSTALL_PROGRAM	?=	${INSTALL} -cp
INSTALL_MAN	?=	${INSTALL} -cp

all:		bsdiff bspatch
bsdiff:		bsdiff.c
bspatch:	bspatch.c

install-bin:
	${INSTALL_PROGRAM} bsdiff bspatch ${PREFIX}/bin

install-man:
	${INSTALL_MAN} bsdiff.1 bspatch.1 ${PREFIX}/man/man1

install: install-bin install-man
