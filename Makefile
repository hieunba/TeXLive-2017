F=perl6_cheatsheet

$(F).html: $(F).xml
	latexmlpost --destination=$@ $<

$(F).xml: $(F).tex
	latexml --destination=$@ $<
