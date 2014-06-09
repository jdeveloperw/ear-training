RequireJS Setup

    define ['angular'], (angular) ->
      'use strict';
	
Instantiate the module.

      module = angular.module 'myApp.services', []

Function for grabbing a random integer between [min, max] (inclusive):

      randomInt min, max ->
        return Math.floor(Math.random() * (max - min + 1) + min)

Service for providing the app version.
TODO: Can this be extracted from package.json?

      module.value 'version', '0.0.1'

Service for generating random note values

      class Note
        random min, max ->
          return randomInt min, max

Service for generating random sequences of notes

      class NoteSequence
        constructor: (@Note) ->

        random min, max, maxInterval, length ->

          notes = [ @Note.random(min, max) ]
          for i in [1..length]
            previousNote = notes[i-1]
            minimum = Math.max(min, previousNote - maxInterval)
            maximum = Math.min(max, previousNote + maxInterval)
            notes += random minimum, maximum

          return notes

TODO Service for converting MIDI note number to piano note name,
e.g. C4 -> 60 and 60 -> C4.
For simplicity, we will represent everything as sharps (no flats).
For reference: 21 = A0

      class MidiConverter
        numberToPiano number ->

        pianoToNumber piano ->
          letter = piano[0]
          if piano.length == 2
            sharpOrFlat = piano[1]
            # TODO cleaner
            accidentalValue = if sharpOrFlat == '#' then 1 else -1
            octave = piano[2]
          else
            octave = piano[1]

          return 21 + (letter - 'A') + 12 * octave + accidentalValue
            
Service for converting to and from midi.

      return module
