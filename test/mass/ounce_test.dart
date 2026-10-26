import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Gram(28.349556839727),
  Kilogram(Ounce().factor),
  Pound(0.062500070194579),
  Tonne(0.00002834952),
];

void main() {
  test('constructor', () {
    final Ounce ounce = Ounce();
    expect(ounce.value, 0);
    expect(ounce.name, 'Ounce');
    expect(ounce.pluralName, 'Ounces');
    expect(ounce.symbol, 'oz');
    expect(ounce.toString(), '0 oz');
  });

  test('conversion', () {
    final Ounce ounce = Ounce();
    for (final Mass unit in Mass.values) {
      expect(
        Unitz.convert(from: ounce, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Ounce ounce = Ounce(1);
    for (final Unit unit in unitList) {
      expect(ounce.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Ounce ounce = Ounce(1);
    for (final Unit unit in unitList) {
      expect(ounce == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Ounce ounce1 = Ounce(1);
    expect(ounce1.toString(), '1 oz');
    final Ounce ounce2 = Ounce(2);
    expect(ounce2.toString(), '2 oz');
    final Ounce ounce3 = Ounce(3000);
    expect(ounce3.toString(), '3 koz');
    final Ounce ounce4 = Ounce(4000000);
    expect(ounce4.toString(), '4 Moz');
  });
}
