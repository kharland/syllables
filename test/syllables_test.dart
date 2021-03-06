import 'package:syllables/syllables.dart';
import 'package:test/test.dart';

void main() {
  group('countSyllables', () {
    test('should return the number of syllables in a word', () {
      expect(countSyllables('Autumn'), 2);
      expect(countSyllables('moonlight'), 2);
      expect(countSyllables('a'), 1);
      expect(countSyllables('worm'), 1);
      expect(countSyllables('digs'), 1);
      expect(countSyllables('silently'), 3);
      expect(countSyllables('into'), 2);
      expect(countSyllables('the'), 1);
      expect(countSyllables('chestnut'), 2);
      expect(countSyllables('poem'), 2);
      expect(countSyllables('Robbie'), 2);
      expect(countSyllables('quote'), 1);
      expect(countSyllables('made'), 1);
      expect(countSyllables('there'), 1);
      expect(countSyllables('Such'), 1);
      expect(countSyllables('leave'), 1);
      expect(countSyllables('tiny'), 2);
      expect(countSyllables('fatal'), 2);
      expect(countSyllables('cleaned'), 1);
      expect(countSyllables('brilliant-hued'), 5);
      expect(countSyllables('an'), 1);
      expect(countSyllables('pond...'), 1);
      expect(countSyllables('pond,'), 1);
      expect(countSyllables('again'), 2);
      expect(countSyllables('old'), 1);
      expect(countSyllables("I'm"), 1);
      expect(countSyllables('silent'), 2);
      expect(countSyllables('jumps'), 1);
      expect(countSyllables('splash!'), 1);
      expect(countSyllables('Silence,'), 2);
      expect(countSyllables('frog'), 1);
      expect(countSyllables('such'), 1);
      expect(countSyllables('tiny'), 2);
      expect(countSyllables('bug'), 1);
      expect(countSyllables('Yet'), 1);
      expect(countSyllables('this'), 1);
      expect(countSyllables('small'), 1);
      expect(countSyllables('flaw'), 1);
      expect(countSyllables('was'), 1);
      expect(countSyllables('fatal'), 2);
      expect(countSyllables('Has'), 1);
      expect(countSyllables('grant'), 1);
      expect(countSyllables('his'), 1);
      expect(countSyllables('ass'), 1);
      expect(countSyllables('haikus'), 2);
      expect(countSyllables('haiku'), 2);
      expect(countSyllables('maybe'), 2);
      expect(countSyllables('with'), 1);
      expect(countSyllables('sweet'), 1);
      expect(countSyllables('am'), 1);
      expect(countSyllables('mature'), 2);
    });

    test('should compute syllables with overrides', () {
      expect(countSyllables('noncompetitively'), 0);
      expect(
          countSyllables('noncompetitively', overrides: {
            'noncompetitively': 6,
          }),
          6);

      expect(countSyllables('maybe'), 2);
      expect(countSyllables('maybe', overrides: {'maybe': 100}), 100);
    });
  });

  group('countSyllablesAll', () {
    test('should count syllables for lists of words', () {
      expect(countSyllablesAll(['Hi', "I'm", "Roger"]), 4);
    });

    test('should count syllables for lists of words with overrides', () {
      expect(
          countSyllablesAll([
            'Hi',
            "I'm",
            "Roger"
          ], overrides: {
            'roger': 100,
          }),
          102);
    });
  });
}
