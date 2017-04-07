## Process this file with automake to produce Makefile.in

makehuman_datadir = $(datadir)/makehuman

makehuman_data_DATA = \
	base.body \
	base.faces \
	base.skin \
	base.subde \
	base.uv \
	default.bs \
	base.clothes \
	base.materials \
	base.smooth \
	base.subdf \
	base.vertices \
	base.colors \
	base.parts \
	base.strips \
	base.subdo \
	subd.parts

EXTRA_DIST = $(makehuman_data_DATA)

dist-hook:
	$(mkinstalldirs) $(distdir)
	
	find . -name '*.bs' -exec cp --parents {} $(distdir) \;
	find $(distdir) -name '*.bs' -exec chmod 0644 {} \;
	
	find . -name '*.target' -exec cp --parents {} $(distdir) \;
	find $(distdir) -name '*.target' -exec chmod 0644 {} \;
	
	find . -name '*.template' -exec cp --parents {} $(distdir) \;
	find $(distdir) -name '*.template' -exec chmod 0644 {} \;
	
	find . -name '*.sl' -exec cp --parents {} $(distdir) \;
	find $(distdir) -name '*.sl' -exec chmod 0644 {} \;
	
	find . -name '*.tif' -exec cp --parents {} $(distdir) \;
	find $(distdir) -name '*.tif' -exec chmod 0644 {} \;
	
	find . -name '*.rot' -exec cp --parents {} $(distdir) \;
	find $(distdir) -name '*.rot' -exec chmod 0644 {} \;
	
	find . -name '*.info' -exec cp --parents {} $(distdir) \;
	find $(distdir) -name '*.info' -exec chmod 0644 {} \;
	
	find . -name '*.camera' -exec cp --parents {} $(distdir) \;
	find $(distdir) -name '*.camera' -exec chmod 0644 {} \;

install-data-local:
	$(mkinstalldirs) $(DESTDIR)$(makehuman_datadir)
	
	find . -name '*.bs' -exec cp --parents {} $(DESTDIR)$(makehuman_datadir) \;
	find $(DESTDIR)$(makehuman_datadir) -name '*.bs' -exec chmod 0644 {} \;
	
	find . -name '*.target' -exec cp --parents {} $(DESTDIR)$(makehuman_datadir) \;
	find $(DESTDIR)$(makehuman_datadir) -name '*.target' -exec chmod 0644 {} \;
	
	find . -name '*.template' -exec cp --parents {} $(DESTDIR)$(makehuman_datadir) \;
	find $(DESTDIR)$(makehuman_datadir) -name '*.template' -exec chmod 0644 {} \;
	
	find . -name '*.sl' -exec cp --parents {} $(DESTDIR)$(makehuman_datadir) \;
	find $(DESTDIR)$(makehuman_datadir) -name '*.sl' -exec chmod 0644 {} \;
	
	find . -name '*.tif' -exec cp --parents {} $(DESTDIR)$(makehuman_datadir) \;
	find $(DESTDIR)$(makehuman_datadir) -name '*.tif' -exec chmod 0644 {} \;
	
	find . -name '*.rot' -exec cp --parents {} $(DESTDIR)$(makehuman_datadir) \;
	find $(DESTDIR)$(makehuman_datadir) -name '*.rot' -exec chmod 0644 {} \;
	
	find . -name '*.info' -exec cp --parents {} $(DESTDIR)$(makehuman_datadir) \;
	find $(DESTDIR)$(makehuman_datadir) -name '*.info' -exec chmod 0644 {} \;
	
	find . -name '*.camera' -exec cp --parents {} $(DESTDIR)$(makehuman_datadir) \;
	find $(DESTDIR)$(makehuman_datadir) -name '*.camera' -exec chmod 0644 {} \;

uninstall-local:
	rm -rf $(DESTDIR)$(makehuman_datadir)
