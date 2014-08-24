define [
  'config'
  'angular'
  'directive/app-chooser-directive'
], (cfg, A) ->
  describe 'App chooser directive', () ->
    $httpBackend = null
    $scope = null
    createDirective = null
    el = A.element '<div data-app-chooser data-ng-model="dataItems"></div>'

    beforeEach module cfg.ngApp

    beforeEach inject ($injector) ->
      $compile = $injector.get '$compile'
      $httpBackend = $injector.get '$httpBackend'
      $rootScope = $injector.get '$rootScope'

      $compiled = $compile el
      $scope = $rootScope.$new()

      createDirective = () ->
        $compiled $scope

    afterEach () ->
      $httpBackend.verifyNoOutstandingExpectation()
      $httpBackend.verifyNoOutstandingRequest()

    data = [1, 2, 3, 4]

    it 'should load', () ->
      $httpBackend.expectGET(cfg.path.partial + 'directive/app-chooser-partial.html').respond 201, """
      <div class="app-chooser-component">
        <ul>
          <li data-ng-repeat="item in items">
            {{item}}
          </li>
        </ul>
      </div>"""

      directive = createDirective()

      $httpBackend.flush()

      $scope.dataItems = data
      $scope.$digest()

      expect(el.find('li').length).toBe data.length