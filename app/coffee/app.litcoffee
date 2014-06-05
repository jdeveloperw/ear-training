Setup RequireJS

    define ['angular',
            'filters',
            'services',
            'directives',
            'controllers',
            'angularRoute'], (angular, filters, services, directives, controllers) ->

      'use strict';

Setup module
    
      module = angular.module 'myApp', [
        'ngRoute',
        'myApp.controllers',
        'myApp.filters',
        'myApp.services',
        'myApp.directives'
      ]

      return module
