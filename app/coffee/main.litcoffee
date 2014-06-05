Configure RequireJS

    require.config {
      paths:
        angular: '../bower_components/angular/angular',
        angularRoute: '../bower_components/angular-route/angular-route',
        angularMocks: '../bower_components/angular-mocks/angular-mocks',
        text: '../bower_components/requirejs-text/text'
        midiAudio: '../bower_components/MIDI.js/js/MIDI/AudioDetect',
        midiPlugin: '../bower_components/MIDI.js/js/MIDI/Plugin'
        midiLoadPlugin: '../bower_components/MIDI.js/js/MIDI/LoadPlugin'
        midiPlayer: '../bower_components/MIDI.js/js/MIDI/Player'
        midiDOMLoader: '../bower_components/MIDI.js/js/Window/DOMLoader.XMLHttp'
        midiBase64: '../bower_components/MIDI.js/inc/Base64'
        midiBase64Binary: '../bower_components/MIDI.js/inc/base64binary'
      shim:
        'angular' :
          'exports' : 'angular'
        'angularRoute': ['angular'],
        'angularMocks':
          deps:['angular'],
          'exports':'angular.mock'
        'midiLoadPlugin':
          deps: ['midiPlugin', 'midiAudio', 'midiPlayer', 'midiDOMLoader', 'midiBase64', 'midiBase64Binary']
          'exports':'MIDI'
      priority: [ "angular" ]
    }

Configure angular

    #http://code.angularjs.org/1.2.1/docs/guide/bootstrap#overview_deferred-bootstrap
    window.name = "NG_DEFER_BOOTSTRAP!"

    require [ 'angular', 'app', 'routes' ], (angular, app, routes) ->
      'use strict';
      $html = angular.element document.getElementsByTagName('html')[0]

      angular.element().ready ->
        angular.resumeBootstrap [app['name']]
