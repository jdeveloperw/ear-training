// Generated by CoffeeScript 1.6.3
(function() {
  define(['angular', 'services'], function(angular, services) {
    'use strict';
    var module;
    module = angular.module('myApp.directives', ['myApp.services']);
    module.directive('appVersion', [
      'version', function(version) {
        return function(scope, elm, attrs) {
          return elm.text(version);
        };
      }
    ]);
    return module;
  });

}).call(this);
