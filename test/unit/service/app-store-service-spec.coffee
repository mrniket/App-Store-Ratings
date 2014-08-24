define [
  'config'
  'angular'
  'service/app-store-service'
], (cfg, A) ->
  describe 'App store service', () ->
    service = null

    beforeEach module cfg.ngApp

    beforeEach inject ($injector) ->
      service = $injector.get 'appStoreService'

    it 'should load', () ->
      expect(service.fooBar).toBeDefined()