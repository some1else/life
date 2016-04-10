hola = require('jquery')
lol = require('./lol')
chroma = require('chroma-js')


hola ->
	length = 90 * 52
	hola('.week').each (index, week) ->
		# scale = chroma.scale(["#F6FD71", "#6E5D7D"]).domain([1, 90 * 52], 90 * 52, 'quantiles')
		# color = scale(index).hex()
		progress = index / length
		color = chroma.interpolate("#F6FD71", "#6E5D7D", progress, 'hcl').hex()
		hola(week).css(backgroundColor: color)
		if index % 52 == 0
			hola(week).html('<div class="age">' + Math.ceil((index + 1) / 52) + '</div>')
	
	console.log 'bundle.js: window.load event'
	console.log 'bundle.js: jQuery version', hola.fn.jquery
