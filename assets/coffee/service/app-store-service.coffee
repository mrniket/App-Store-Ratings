define [
  'service/radian-service'
], (RS) ->
  class extends RS
    @register 'appStoreService', [
      '$q'
      '$http'
    ]

    init: () ->

    getReviewsForAppWithId: (id) ->
      @$http({method: 'GET', url: "api/apple/#{id}"})

    getAppInfo: (id) ->
      @$http({method: 'GET', url: "api/apple/#{id}"})
