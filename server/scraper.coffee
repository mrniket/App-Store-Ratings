cheerio = require 'cheerio'

exports.google = (html) ->
	$ = cheerio.load html
	reviews = []
	searchTerm = '.reviews'
	$(searchTerm).find('.single-review').each (i, reviewData) ->
		review = {}
		review.date = Date.parse $(reviewData).find('.review-date').text()
		review.rating = $(reviewData).find('.tiny-star').attr('aria-label')[6]
		review.title = $(reviewData).find('.review-title').text()
		review.body = $(reviewData).find('.review-body').text()
		review.body = review.body.substring(review.title.length + 2, review.body.length - 15)
		if !review.title
			review.title = review.body
		reviews.push review
	reviews.sort (a, b) ->
		if a.date == b.date
			return 0
		if a.date < b.date
			return 1
		else
			return -1
	reviews

exports.apple = (json) ->
	reviews = []
	json.feed.entry.shift()
	for reviewData in json.feed.entry
		review = {}
		review.rating = reviewData["im:rating"].label
		review.title = reviewData.title.label
		review.body = reviewData.content.label
		reviews.push review
	reviews