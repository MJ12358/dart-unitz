import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Byte(1 / Byte().scale),
];

void main() {
  test('constructor', () {
    final Bit bit = Bit();
    expect(bit.value, 0);
    expect(bit.name, 'Bit');
    expect(bit.pluralName, 'Bits');
    expect(bit.symbol, 'b');
    expect(bit.toString(), '0 b');
    expect(bit.instance(), isA<Bit>());
  });

  test('conversion', () {
    final Bit bit = Bit();
    for (final Unit unit in Information.values) {
      expect(
        Unitz.convert(from: bit, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Bit bit = Bit(1);
    for (final Unit unit in unitList) {
      expect(bit.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Bit bit = Bit(1);
    for (final Unit unit in unitList) {
      expect(bit == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Bit bit1 = Bit(1);
    expect(bit1.toString(), '1 b');
    final Bit bit2 = Bit(2);
    expect(bit2.toString(), '2 b');
    final Bit bit3 = Bit(3000);
    expect(bit3.toString(), '3 Kib');
    final Bit bit4 = Bit(4000000);
    expect(bit4.toString(), '4 Mib');
  });
}
