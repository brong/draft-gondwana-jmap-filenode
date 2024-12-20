

build: draft-ietf-jmap-filenode.txt draft-ietf-jmap-filenode.html draft-ietf-jmap-filenode.xml

%.xml: %.mdown
	mmark $< > $@

%.txt: %.xml
	xml2rfc --text $<

%.html: %.xml
	xml2rfc --html $<

clean:
	rm -f *.txt *.html *.xml
