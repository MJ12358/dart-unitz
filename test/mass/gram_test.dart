import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Kilogram(Gram().scale),
  Ounce(0.03527392),
  Pound(0.002204622476038),
  Tonne(0.000001),
];

void main() {
  test('constructor', () {
    final Gram gram = Gram();
    expect(gram.value, 0);
    expect(gram.name, 'Gram');
    expect(gram.pluralName, 'Grams');
    expect(gram.symbol, 'g');
    expect(gram.toString(), '0 g');
    expect(gram.instance(), isA<Gram>());
  });

  test('conversion', () {
    final Gram gram = Gram();
    for (final Mass unit in Mass.values) {
      expect(
        Unitz.convert(from: gram, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Gram gram = Gram(1);
    for (final Unit unit in unitList) {
      expect(gram.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Gram gram = Gram(1);
    for (final Unit unit in unitList) {
      expect(gram == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Gram gram1 = Gram(1);
    expect(gram1.toString(), '1 g');
    final Gram gram2 = Gram(2);
    expect(gram2.toString(), '2 g');
    final Gram gram3 = Gram(3000);
    expect(gram3.toString(), '3 kg');
    final Gram gram4 = Gram(4000000);
    expect(gram4.toString(), '4 Mg');
  });
}
