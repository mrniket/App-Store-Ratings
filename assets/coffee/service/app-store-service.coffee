define [
  'service/radian-service'
], (RS) ->
  class extends RS
    @register 'appStoreService', [
      '$q'
      '$http'
    ]

    init: () ->

    getReviews: (store, id) ->
      if store == 'iOS'
        company = 'apple'
      else
        company = 'google'
      
      @$http({method: 'GET', url: "api/#{company}/#{id}"})
