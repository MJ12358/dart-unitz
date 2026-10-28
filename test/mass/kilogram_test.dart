import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Gram(1 / Gram().scale),
  Ounce(1 / Ounce().scale),
  Pound(1 / Pound().scale),
  Tonne(1 / Tonne().scale),
];

void main() {
  test('constructor', () {
    final Kilogram kilogram = Kilogram();
    expect(kilogram.value, 0);
    expect(kilogram.name, 'Kilogram');
    expect(kilogram.pluralName, 'Kilograms');
    expect(kilogram.symbol, 'kg');
    expect(kilogram.toString(), '0 kg');
    expect(kilogram.instance(), isA<Kilogram>());
  });

  test('conversion', () {
    final Kilogram kilogram = Kilogram();
    for (final Mass unit in Mass.values) {
      expect(
        Unitz.convert(from: kilogram, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Kilogram kilogram = Kilogram(1);
    for (final Unit unit in unitList) {
      expect(kilogram.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Kilogram kilogram = Kilogram(1);
    for (final Unit unit in unitList) {
      expect(kilogram == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Kilogram kilogram1 = Kilogram(1);
    expect(kilogram1.toString(), '1 kg');
    final Kilogram kilogram2 = Kilogram(2);
    expect(kilogram2.toString(), '2 kg');
    final Kilogram kilogram3 = Kilogram(3000);
    expect(kilogram3.toString(), '3 kkg');
    final Kilogram kilogram4 = Kilogram(4000000);
    expect(kilogram4.toString(), '4 Mkg');
  });
}
