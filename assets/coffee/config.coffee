# This config file acts as a safe and logical place to house variables that will be used throughout the app.
# The most prominent variable here is `ngApp`; this is used to store the app's [AngularJS](http://angularjs.org) module
# name and all of the app's AngularJS module files will use this variable to add themselves to the module.
define [], () ->
  ngApp: 'appStoreRatings'
  path:
    partial: '/assets/partial/'
  apps: [
  	{
  		name: 'Ocado'
  		iOS: 319691481
  		Android: 'com.ocado.mobile.android'
  		icon: 'http://a915.phobos.apple.com/us/r30/Purple4/v4/a5/2a/e0/a52ae0b6-b44f-826d-facb-fcbd241a1688/mzl.vzlmvftd.75x75-65.png'
  	}
  	{
  		name: 'Morrisons'
  		iOS: 766549078
  		Android: 'com.morrisons.mobile.android'
  		icon: 'http://a441.phobos.apple.com/us/r30/Purple5/v4/2b/87/46/2b874676-6223-06fe-1842-148127c37c68/mzl.csuqoele.75x75-65.png'
  	}
  ]
  stores: [
  	'iOS'
  	'Android'
  ]