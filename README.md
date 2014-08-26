# App Store Ratings

This is a webapp that aggregates reviews for apps from the Apple App Store and Google Play.

## Installation

1. Clone the repo
2. If you haven't got these modules already, run `gem install compass sass coffee-script` and `npm install -g coffee-script yo`
3. run `npm install` and `grunt install`
4. Your ready to go! Run `grunt` to start the server and go to [localhost:8000](http://localhost:8000) 

## Configuration

To let the webapp know which app you want to show reviews of, you will need the app id(s) for them. Put them in config.coffee in the following format:

~~~json
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
~~~


This app uses the [Radian](http://radian.io) framework. 