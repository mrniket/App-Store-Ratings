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
      apps: '='
    link: ($scope, $element, $attrs) ->

      
