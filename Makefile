DEST=links
SRC=`pwd`
DATE=`date +%Y%m%d%H%M`
tgz:
	sed -e "s@DATA@$(DATE)@g" < mlgtracer.spec.in >mlgtracer.spec
	tar cvfz ../mlgtracer-$(DATE).tgz lib Makefile README.* mlgtracer.spec*

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
