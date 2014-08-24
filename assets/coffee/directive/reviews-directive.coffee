define [
  'config'
  'directive/radian-directive'
  'service/app-store-service'
], (cfg, RD) ->
  RD 'reviews', [
    '$rootScope'
    'appStoreService'
  ], ($rootScope, appStoreService) ->
    templateUrl: cfg.path.partial + 'directive/reviews-partial.html'
    restrict: 'E'
    replace: true
    scope:
      'data': '='
    link: ($scope, $element, $attrs) ->
      $scope.reviews = $scope.data
      $scope.reviews.shift()
