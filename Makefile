# builds site into _site
build:
	bundle exec jekyll build
	sass assets/main.scss assets/main.css

# serves built site locally
server:
	ruby -run -e httpd -- _site -p 8000

# pushes built site
deploy:
	rm-wh push-static creative-director.risd.systems --staticFolder=_site
