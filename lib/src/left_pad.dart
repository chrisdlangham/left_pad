/// the meat and potatoes of the package
String leftPad(
  final String str, {
  required final int targetLength,
  final String padString = ' ',
}) {
  if (str.length >= targetLength) {
    return str;
  }
  if (padString.length != 1) {
    throw ArgumentError('padString must be one character');
  }
  final paddingLength = targetLength - str.length;
  final padding = padString * paddingLength;
  return padding + str;
}
