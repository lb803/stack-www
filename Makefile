all: www/index.html

www/index.html : stylesheet.xsl data.xml
	xsltproc -o $@ stylesheet.xsl data.xml
