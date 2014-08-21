# A pretty [standard AngularJS ngRoute](http://docs.angularjs.org/api/ngRoute.$routeProvider) set up.
define [
  # Jump to [`config.coffee`](config.html) ☛
  'config'
  'angular'
  ], (cfg, A) ->
  routes = ($routeProvider, $locationProvider) ->
    $routeProvider.when '/',
        templateUrl: cfg.path.partial + 'home-partial.html'

    $routeProvider.otherwise
      redirectTo: '/'

    $locationProvider.html5Mode true

  routes.$inject = [
    '$routeProvider'
    '$locationProvider'
  ]

  app = A.module cfg.ngApp
  app.config routes