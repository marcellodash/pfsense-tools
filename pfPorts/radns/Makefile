# New ports collection makefile for:   radns
# Date created:        11 July 2011
# Whom:                Michael Cardell Widerkrantz <mc@hack.org>
#
# $FreeBSD$
#

PORTNAME=	radns
PORTVERSION=	20110809
CATEGORIES=	dns
MASTER_SITES=	http://hack.org/mc/hacks/radns/
DISTNAME=	${PORTNAME}-20110809

MAINTAINER=	mc@hack.org
COMMENT=	IPv6 DNS server address autoconfiguration client

USE_BZIP2=	yes
USE_RC_SUBR=	radns

LICENSE=	ISCL

USERS=		nobody
GROUPS=		nobody

USE_RC_SUBR=	radns
SUB_FILES=	pkg-message

MAN8=		radns.8

PORTDOCS=	LICENSE README README.FreeBSD NEWS

post-install:
.if !defined(NOPORTDOCS)
	@${ECHO_MSG} "Installing additional documentation to ${DOCSDIR}"
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_MAN} ${WRKSRC}/LICENSE ${DOCSDIR}
	@${INSTALL_MAN} ${WRKSRC}/README ${DOCSDIR}
	@${INSTALL_MAN} ${WRKSRC}/README.FreeBSD ${DOCSDIR}
	@${INSTALL_MAN} ${WRKSRC}/NEWS ${DOCSDIR}

.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
