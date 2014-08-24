# This is the heart and soul of the app. It's up to you and your team on whether you choose to use a 'class' pattern
# but from experience following this pattern provides a clean and adaptable layout for your code.
define [
  # Jump to [`config.coffee`](config.html) ☛
  'config'
  'angular'
  # Load up the base controller, all controllers inherit from it. All hail the base controller. Wow.
  # Jump to [`controller/radian-controller.coffee`](radian-controller.html) ☛
  'controller/radian-controller'
  # Fast apps are nice, and in order to keep your app nice and fast it's a good idea to make use of
  # [`$templateCache`](http://docs.angularjs.org/api/ng.$templateCache), so here we have a file that takes care of that;
  # during development it's left empty on purpose and it's then filled with the compiled [Jade](http://jade-lang.com)
  # templates during build time.
  # Jump to [`partials.coffee`](partials.html) ☛
  'partials'
  # Before `appController` is added to the app it is vital to load in the
  # [`ngRoute`](http://docs.angularjs.org/api/ngRoute.$routeProvider) configuration. If your app is driven from an API
  # and thus the navigation needs to be loaded before the app can work out where to go then it's a good idea to use
  # [`$route.reload()`](http://docs.angularjs.org/api/ngRoute.$route) after the navigation data has been loaded.
  # Jump to [`routes.coffee`](routes.html) ☛
  'routes'
  # services
  'service/app-store-service'
  # directives
  'directive/review-directive'
  'directive/reviews-directive'
  'directive/app-chooser-directive'
  ], (cfg, A, RC) ->
  # Every controller class in radian follows the same pattern. It's also preferable to explicity specify the `$inject`
  # modules as this code will be minified.
  class extends RC
    # You register your controller by calling `@register` and passing in the class's name and then the dependancies as
    # an array.
    @register 'AppController', [
      '$scope'
      'appStoreService'
    ]

    init: () ->
      @appStoreService.getAppInfo(319691481).success (appInfo) =>
        @$scope.apps = [
            {
              name: appInfo.feed.entry[0]["im:name"].label
              icon: appInfo.feed.entry[0]["im:image"][2].label
            }
          ]
        @$scope.reviews = appInfo.feed.entry