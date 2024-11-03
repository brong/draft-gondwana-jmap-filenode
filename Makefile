

build: draft-gondwana-jmap-filenode.txt draft-gondwana-jmap-filenode.html draft-gondwana-jmap-filenode.xml

%.xml: %.mdown
	mmark $< > $@

%.txt: %.xml
	xml2rfc --text $<

%.html: %.xml
	xml2rfc --html $<

clean:
	rm -f *.txt *.html *.xml
