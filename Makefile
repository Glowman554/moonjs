dist:
	mkdir dist
	make -C agc_js
	cp agc_js/agc.* dist/.
	cp agc.html dist/.
	cp digital-7-mono-italic.ttf dist/.
	wget http://code.jquery.com/jquery-1.9.1.js -O dist/jquery.js

serve: dist
	python2 -m SimpleHTTPServer 8080

clean:
	make -C agc_js clean
	rm -rf dist