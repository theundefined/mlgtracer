DEST=links
SRC=`pwd`
tgz:
	tar cvfz ../mlgtracer-`date +%Y%m%d%H%M`.tgz lib

links: clean
	install -d $(DEST); \
	libr="`ls lib/lib.*`"; \
	for targetlib in $$libr; do \
		for targetlink in `$$targetlib targets`; do \
		ln -sf $(SRC)/$$targetlib $(DEST)/$$targetlink; \
		done; \
	done;

clean:
	rm -rf $(DEST) lib/*~ *~
