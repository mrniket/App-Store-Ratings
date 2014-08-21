define [
  'config'
  'angular'
  'directive/review-directive'
], (cfg, A) ->
  describe 'Review directive', () ->
    $httpBackend = null
    $scope = null
    createDirective = null
    el = A.element '<div data-review data-ng-model="dataItems"></div>'

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
      $httpBackend.expectGET("#{cfg.path.partial}directive/review-partial.html")
        .respond 201, """
          <div class="review-component">
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