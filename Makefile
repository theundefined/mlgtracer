DEST=links
SRC=`pwd`
DATE=`date +%Y%m%d%H%M`
tgz: LG-list links
	sed -e "s@DATA@$(DATE)@g" < mlgtracer.spec.in >mlgtracer.spec
	tar cvfz ../mlgtracer-$(DATE).tgz lib Makefile README.* mlgtracer.spec* LG-list

links: clean
	install -d $(DEST); \
	libr="`ls lib/lib.*`"; \
	for targetlib in $$libr; do \
		for targetlink in `$$targetlib targets`; do \
		ln -sf $(SRC)/$$targetlib $(DEST)/$$targetlink; \
		done; \
	done;

LG-list: clean
	libr="`ls lib/lib.*`"; \
	     ( \
		for targetlib in $$libr; do \
		     	aslist=`$$targetlib as |tr ',' ' ' `; \
			url=`$$targetlib url` ; \
			for as in $$aslist; do \
				echo $$as $$url; \
			done; \
	 	done; \
	      ) |sort -n |uniq > LG-list;

clean:
	rm -rf $(DEST) lib/*~ *~ LG-list
