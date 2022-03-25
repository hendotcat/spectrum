index.html: node_modules
	yarn install
	yarn zoetrope build spectrum.scss

.PHONY: clean
clean:
	rm -f index.html spectrum-*.css

node_modules:
	yarn install

.PHONY: publish
publish: index.html
	rm -rf makefile node_modules netlify.toml package.json readme.md spectrum.scss