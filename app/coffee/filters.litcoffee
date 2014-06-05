Setup RequireJS

    define ['angular', 'services'], (angular, services) ->
      'use strict';

Instantiate Module
      
      module = angular.module 'myApp.filters', ['myApp.services']

Create interpolate filter

      module.filter 'interpolate', ['version', (version) ->
          return (text) ->
            return String(text).replace(/\%VERSION\%/mg, version)
        ]

      return module
