define [
  'config'
  'directive/radian-directive'
  'angular-bootstrap'
], (cfg, RD) ->
  RD 'review', [
    '$rootScope'
  ], ($rootScope) ->
    templateUrl: cfg.path.partial + 'directive/review-partial.html'
    restrict: 'E'
    replace: true
    scope:
      rate: '@'
      title: '@'
      body: '@'
    link: ($scope, $element, $attrs) ->
      $scope.ratingStates =
        on: "glyphicon glyphicon-star"
        off: "glyphicon glyphicon-star-empty"