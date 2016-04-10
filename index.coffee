hola = require('jquery')
lol = require('./lol')

console.log 'bundle.js:', lol()
console.log 'bundle.js: jQuery version', hola.fn.jquery

hola ->
	hola('p').css(backgroundColor: 'red')
	
	console.log 'bundle.js: window.load event'
	console.log 'bundle.js: jQuery version', hola.fn.jquery
