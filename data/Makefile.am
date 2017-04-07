## Process this file with automake to produce Makefile.in

makehuman_datadir = $(datadir)/makehuman

makehuman_data_DATA = \
	base.mesh\
	faces.mesh

EXTRA_DIST = $(makehuman_data_DATA)

dist-hook:
	$(mkinstalldirs) $(distdir)
	cp -R $(srcdir)/targets $(distdir)
	cp -R $(srcdir)/UI $(distdir)

install-data-local:
	$(mkinstalldirs) $(DESTDIR)$(datadir)/makehuman
	cp -R $(srcdir)/targets $(DESTDIR)$(datadir)/makehuman
	cp -R $(srcdir)/UI $(DESTDIR)$(datadir)/makehuman

uninstall-local:
	rm -rf $(DESTDIR)$(datadir)/makehuman

