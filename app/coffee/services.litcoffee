RequireJS Setup

    define ['angular'], (angular) ->
      'use strict';
	

Instantiate the module.

      module = angular.module 'myApp.services', []

Service for providing the app version

      module.value 'version', '0.0.1'

Service for converting to and from midi.

      return module
