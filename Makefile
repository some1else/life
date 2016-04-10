index.js: index.coffee
	coffee -c index.coffee
bundle.js: index.js
	browserify index.js > bundle.js

bundle: node_modules index.js bundle.js

node_modules: package.json
	npm install

.PHONY: bundle