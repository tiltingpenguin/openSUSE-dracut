Index: dracut/Makefile
===================================================================
--- dracut.orig/Makefile	2012-01-05 21:40:13.545255956 +0100
+++ dracut/Makefile	2012-01-05 21:40:33.906706454 +0100
@@ -6,7 +6,7 @@
 datadir ?= ${prefix}/share
 pkglibdir ?= ${libdir}/dracut
 sysconfdir ?= ${prefix}/etc
-bindir ?= ${prefix}/sbin
+bindir ?= ${prefix}/bin
 mandir ?= ${prefix}/share/man
 
 manpages = dracut.8 dracut.cmdline.7 dracut.conf.5 dracut-catimages.8  dracut-gencmdline.8
@@ -30,7 +30,7 @@
 	mkdir -p $(DESTDIR)$(bindir)
 	mkdir -p $(DESTDIR)$(sysconfdir)
 	mkdir -p $(DESTDIR)$(pkglibdir)/modules.d
-	mkdir -p $(DESTDIR)$(mandir)/man{5,7,8}
+	mkdir -p $(DESTDIR)$(mandir)/man5 $(DESTDIR)$(mandir)/man7 $(DESTDIR)$(mandir)/man8
 	install -m 0755 dracut $(DESTDIR)$(bindir)/dracut
 	install -m 0755 dracut-gencmdline $(DESTDIR)$(bindir)/dracut-gencmdline
 	install -m 0755 dracut-catimages $(DESTDIR)$(bindir)/dracut-catimages
