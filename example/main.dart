// ignore_for_file: avoid_print
import 'package:left_pad/left_pad.dart';

void main() {
  final firstExample = leftPad('foo', targetLength: 5);
  final secondExample = leftPad('foo', targetLength: 5, padString: '*');

  print(firstExample); // '  foo'
  print(secondExample); // '**foo'
}
