import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Gram(453.5924),
  Kilogram(Pound().scale),
  Ounce(15.999982030208),
  Tonne(0.0004535924),
];

void main() {
  test('constructor', () {
    final Pound pound = Pound();
    expect(pound.value, 0);
    expect(pound.name, 'Pound');
    expect(pound.pluralName, 'Pounds');
    expect(pound.symbol, 'lb');
    expect(pound.toString(), '0 lb');
    expect(pound.instance(), isA<Pound>());
  });

  test('conversion', () {
    final Pound pound = Pound();
    for (final Mass unit in Mass.values) {
      expect(
        Unitz.convert(from: pound, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Pound pound = Pound(1);
    for (final Unit unit in unitList) {
      expect(pound.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Pound pound = Pound(1);
    for (final Unit unit in unitList) {
      expect(pound == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Pound pound1 = Pound(1);
    expect(pound1.toString(), '1 lb');
    final Pound pound2 = Pound(2);
    expect(pound2.toString(), '2 lb');
    final Pound pound3 = Pound(3000);
    expect(pound3.toString(), '3 klb');
    final Pound pound4 = Pound(4000000);
    expect(pound4.toString(), '4 Mlb');
  });
}
