Setup RequireJS

    define ['angular', 'services'], (angular, services) ->
      'use strict';

Instantiate module

      module = angular.module 'myApp.directives', ['myApp.services']
      module.directive 'appVersion', ['version', (version) ->
          return (scope, elm, attrs) ->
            elm.text(version);
        ]
      return module
