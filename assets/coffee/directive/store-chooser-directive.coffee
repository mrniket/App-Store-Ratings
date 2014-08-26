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
      storeChosen: '='
    link: ($scope, $element, $attrs) ->

      $scope.stores = cfg.stores

      $scope.chosen = (store) ->
        $scope.storeChosen = store