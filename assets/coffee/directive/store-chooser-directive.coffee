define [
  'config'
  'directive/radian-directive'
], (cfg, RD) ->
  RD 'storeChooser', [
    '$rootScope'
  ], ($rootScope) ->
    templateUrl: cfg.path.partial + 'directive/store-chooser-partial.html'
    restrict: 'E'
    replace: true
    scope:
      stores: '='
      storeChosen: '='
    link: ($scope, $element, $attrs) ->

      $scope.chosen = (store) ->
        $scope.storeChosen = store