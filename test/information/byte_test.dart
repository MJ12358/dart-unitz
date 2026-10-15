import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Bit(Byte().factor),
];

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
  test('compare', () {
    final Byte byte = Byte(1);
    for (final Unit unit in unitList) {
      expect(byte.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Byte byte = Byte(1);
    for (final Unit unit in unitList) {
      expect(byte == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Byte byte1 = Byte(1);
    expect(byte1.toString(), '1 B');
    final Byte byte2 = Byte(2);
    expect(byte2.toString(), '2 B');
    final Byte byte3 = Byte(3000);
    expect(byte3.toString(), '3 KiB');
    final Byte byte4 = Byte(4000000);
    expect(byte4.toString(), '4 MiB');
  });
}
