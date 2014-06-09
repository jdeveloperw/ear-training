// Generated by CoffeeScript 1.6.3
(function() {
  define(['angular'], function(angular) {
    'use strict';
    var MidiConverter, Note, NoteSequence, module;
    module = angular.module('myApp.services', []);
    randomInt(min, max(function() {
      return Math.floor(Math.random() * (max - min + 1) + min);
    }));
    module.value('version', '0.0.1');
    Note = (function() {
      function Note() {}

      random(min, max(function() {
        return randomInt(min, max);
      }));

      return Note;

    })();
    NoteSequence = (function() {
      function NoteSequence(Note) {
        this.Note = Note;
      }

      random(min, max, maxInterval, length(function() {
        var i, maximum, minimum, notes, previousNote, _i;
        notes = [this.Note.random(min, max)];
        for (i = _i = 1; 1 <= length ? _i <= length : _i >= length; i = 1 <= length ? ++_i : --_i) {
          previousNote = notes[i - 1];
          minimum = Math.max(min, previousNote - maxInterval);
          maximum = Math.min(max, previousNote + maxInterval);
          notes += random(minimum, maximum);
        }
        return notes;
      }));

      return NoteSequence;

    })();
    MidiConverter = (function() {
      function MidiConverter() {}

      numberToPiano(number(function() {}));

      pianoToNumber(piano(function() {
        var accidentalValue, letter, octave, sharpOrFlat;
        letter = piano[0];
        if (piano.length === 2) {
          sharpOrFlat = piano[1];
          accidentalValue = sharpOrFlat === '#' ? 1 : -1;
          octave = piano[2];
        } else {
          octave = piano[1];
        }
        return 21 + (letter - 'A') + 12 * octave + accidentalValue;
      }));

      return MidiConverter;

    })();
    return module;
  });

}).call(this);
