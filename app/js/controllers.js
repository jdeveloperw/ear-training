'use strict';

/* Controllers */

angular.module('myApp.controllers', [])
  .controller('MainController', ['$scope', function($scope) {
    console.log('here');

    MIDI.loadPlugin({
      soundfontUrl: "bower_components/MIDI.js/soundfont/",
      instrument: "acoustic_grand_piano",
      callback: function() {
        var delay = 0; // play one note every quarter second
        var note = 50; // the MIDI note
        var velocity = 127; // how hard the note hits
        // play the note
        MIDI.setVolume(0, 127);
        MIDI.noteOn(0, note, velocity, delay);
        MIDI.noteOff(0, note, delay + 0.75);
      }
    });
  }]);
