tgz:
	tar cvfz mlgtracer-`date +%Y%m%d%H%M`.tgz lib

links: clean
	install -d links; \
	libr="x y `ls lib/lib.*`"; \
	for targetlib in $$libr; do \
		for targetlink in `$$targetlib targets`; do \
		ln -sf `pwd`/$$targetlib links/$$targetlink; \
		done; \
	done;

clean:
	rm -rf links
