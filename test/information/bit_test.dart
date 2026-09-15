import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Bit bit = Bit();
    expect(bit.value, 0);
    expect(bit.name, 'Bit');
    expect(bit.pluralName, 'Bits');
    expect(bit.symbol, 'b');
    expect(bit.toString(), '0 b');
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
}
