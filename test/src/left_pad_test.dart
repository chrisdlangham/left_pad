import 'package:left_pad/left_pad.dart';
import 'package:test/test.dart';

void main() {
    test('leftPad', () {
      expect(leftPad('foo', targetLength: 5), '  foo');
      expect(leftPad('foobar', targetLength: 6), 'foobar');
      expect(leftPad('yay boi', targetLength: 3), 'yay boi');
    });

    test('left pad with pad string', () {
      expect(leftPad('foo', targetLength: 5, padString: '*'), '**foo');
      expect(() => leftPad('foo', targetLength: 5, padString: ''), throwsArgumentError);
      expect(() => leftPad('foo', targetLength: 5, padString: '_-'), throwsArgumentError);
    });
}
