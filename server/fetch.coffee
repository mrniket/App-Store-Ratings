Q = require 'q'
request = require 'request'

exports.apple = (id) ->
	deferred = Q.defer()
	request
		uri: "http://itunes.apple.com/gb/rss/customerreviews/id=#{id}/json"
		json: true,
		(error, response, body) ->
			if !error && response.statusCode = 200
				deferred.resolve body
	deferred.promise

exports.google = (id) ->
	deferred = Q.defer()
	request
		uri: "https://play.google.com/store/apps/details?id=#{id}",
		(error, response, body) ->
			if !error && response.statusCode = 200
				deferred.resolve body
	deferred.promise