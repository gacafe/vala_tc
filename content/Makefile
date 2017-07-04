#
#

WHITELIST := 'Makefile\|resources/'

CHAPTERS := resources/markdown/Title.md dependencies/TOC.md \
	$(shell sed -n '/^[^ ;].*|/ s|^\([^ ]*\).*|resources/markdown/\1.md|p' \
	resources/markdown/TOC.md)

all: dependencies html todo standalone

html:
	@ grep -v '^;' resources/markdown/TOC.md | sed 's/.*|//'     > dependencies/TOC.md
	@ cat  resources/html/head.html                              > index.html
	@ resources/scripts/wrapchapters.sh pandoctor $(CHAPTERS)   >> index.html
	@ cat  resources/html/footer.html                           >> index.html

.PHONY: standalone
standalone: python_vala.html

python_vala.html: html
	inliner -m 'index.html' > python_vala.html

display: html
	@ ./resources/scripts/chromereload index.html

devel:
	open index.html
	commando -p cat -q -j                     \
	| grep --line-buffered -v 'dependencies/' \
	| grep --line-buffered -v 'dot/'          \
	| grep --line-buffered -v 'git'           \
	| grep --line-buffered    $(WHITELIST)    \
	| uniqhash                                \
	| conscript make display

todo: unchecked_examples
	@ grep -ni todo $(CHAPTERS) | cat

publish:
	make
	git add -A .
	@ echo "Commit Message:"
	@ read message; \
	git commit -m "Publishing - $$message" || echo "No commit required"
	git push || echo "No master push required"
	git push origin master:gh-pages || echo "No gh-pages push required"

dependencies:
	mkdir -p dependencies

clean:
	rm -rf dependencies
	mkdir dependencies
	rm -f /tmp/vala_workshop_md5_*
	rm -f /tmp/vala_workshop.*.cache
	rm -f /tmp/ghc_results_*
	rm -f /tmp/vala_workshop_check.*

unchecked_examples:
	@ grep -n 'data-language=haskell' $(CHAPTERS) | grep -v check | cat
