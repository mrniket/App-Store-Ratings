define [
  'config'
  'directive/radian-directive'
], (cfg, RD) ->
  RD 'reviews', [
    '$rootScope'
  ], ($rootScope) ->
    templateUrl: cfg.path.partial + 'directive/reviews-partial.html'
    restrict: 'E'
    replace: true
    scope:
      'data': '='
    link: ($scope, $element, $attrs) ->
      $scope.reviews = $scope.data
