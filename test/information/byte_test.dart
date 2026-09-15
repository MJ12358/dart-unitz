import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Byte byte = Byte();
    expect(byte.value, 0);
    expect(byte.name, 'Byte');
    expect(byte.pluralName, 'Bytes');
    expect(byte.symbol, 'B');
    expect(byte.toString(), '0 B');
  });

  test('conversion', () {
    final Byte byte = Byte();
    for (final Unit unit in Information.values) {
      expect(
        Unitz.convert(from: byte, to: unit),
        unit,
      );
    }
  });
}
