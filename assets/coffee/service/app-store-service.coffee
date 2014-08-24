define [
  'service/radian-service'
], (RS) ->
  class extends RS
    @register 'appStoreService', [
      '$q'
      '$http'
      'Restangular'
    ]

    init: () ->

    getReviewsForAppWithId: (id) ->
      @$http({method: 'GET', url: "http://itunes.apple.com/gb/rss/customerreviews/id=#{id}/json"})

    getAppInfo: (id) ->
      @$http({method: 'GET', url: "http://itunes.apple.com/gb/rss/customerreviews/id=#{id}/json"})
