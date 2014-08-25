fetch = require './fetch'
scraper = require './scraper'

exports.google = (request, response) ->
	fetch.google(request.params.id).then (body) ->
		response.json scraper.google(body)
		# "com.ocado.mobile.android"

exports.apple = (request, response) ->
	fetch.apple(request.params.id).then (body) ->
		response.json scraper.apple(body)
		# 319691481