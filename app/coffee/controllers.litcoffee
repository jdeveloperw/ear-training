RequireJS setup

    define ['angular', 'services', 'midiLoadPlugin'], (angular, services, MIDI) ->
      'use strict';

Instantiate the module with a dependency on the services module.

      module = angular.module 'myApp.controllers', ['myApp.services']

Create a controller for the player controller. 
We're using AngularJS's 'Controller As' syntax,
which allows us to set properties on a controller object,
which the template can access.

      module.controller 'PlayerController',
        class PlayerController
          play: () ->

            MIDI.loadPlugin {
              soundfontUrl: "bower_components/MIDI.js/soundfont/",
              instrument: "acoustic_grand_piano",
              callback: () ->
                delay = 0; # play one note every quarter second
                note = 50; # the MIDI note
                velocity = 127; # how hard the note hits
                # play the note
                MIDI.setVolume(0, 127);
                MIDI.noteOn(0, note, velocity, delay);
                MIDI.noteOff(0, note, delay + 0.75);
              }

      return module
