$ = require('jquery')
lol = require('./lol')
chroma = require('chroma-js')

scale = ["#F6CE59", "#BDCF5E", "#87CA74", "#56C08F", "#37B2A6", "#45A1B2", "#688CAF", "#85769E", "#956282", "#975162"]

$ ->
	# length = 90 * 52
	$('.week').each (index, week) ->
		# scale = chroma.scale(["#F6FD71", "#6E5D7D"]).domain([1, 90 * 52], 90 * 52, 'quantiles')
		# color = scale(index).hex()
		# progress = index / length
		# color = chroma.interpolate("#F0F07D", "#6E5D7D", progress, 'hcl').hex()
		# otherscale = chroma.scale(["#F6CE59", "#975162"]).mode('lch')
		# color = otherscale(index/length)

		progress = index / 52 / 10
		decade = Math.floor(progress) + 1
		start_color = scale[decade - 1]
		end_color = scale[decade]
		progress = progress % 1
		color = chroma.interpolate(start_color, end_color, progress, 'lch').hex()

		$(week).css(backgroundColor: color)
		if index % 52 == 0
			year = Math.ceil((index + 1) / 52)
			$(week).text(year)
	
	$('.week').click (e) ->
		$(e.currentTarget).toggleClass('clicked')
	$('.week').addClass('interactive')