## Process this file with automake to produce Makefile.in

makehuman_pixmapsdir = $(datadir)/pixmaps/makehuman

makehuman_pixmaps_DATA = 

EXTRA_DIST = $(makehuman_pixmaps_DATA)

dist-hook:
	$(mkinstalldirs) $(distdir)
	
	find . -name '*.png' -exec cp --parents {} $(distdir) \;
	find $(distdir) -name '*.png' -exec chmod 0644 {} \;

install-data-local:
	$(mkinstalldirs) $(DESTDIR)$(makehuman_pixmapsdir)
	
	find . -name '*.png' -exec cp --parents {} $(DESTDIR)$(makehuman_pixmapsdir) \;
	find $(DESTDIR)$(makehuman_pixmapsdir) -name '*.png' -exec chmod 0644 {} \;

uninstall-local:
	rm -rf $(DESTDIR)$(makehuman_pixmapsdir)

