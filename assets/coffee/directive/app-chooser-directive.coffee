define [
  'config'
  'directive/radian-directive'
], (cfg, RD) ->
  RD 'appChooser', [
    '$rootScope'
  ], ($rootScope) ->
    templateUrl: cfg.path.partial + 'directive/app-chooser-partial.html'
    restrict: 'E'
    replace: true
    scope:
      appIndex: '='
    link: ($scope, $element, $attrs) ->
      $scope.apps = cfg.apps
      $scope.appChosen = (index) ->
        $scope.appIndex = index

      $scope.isSelected = (index) ->
        $scope.appIndex == index
