import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Gram(1000000),
  Kilogram(Tonne().scale),
  Ounce(35273.9619496),
  Pound(2204.62262185),
];

void main() {
  test('constructor', () {
    final Tonne tonne = Tonne();
    expect(tonne.value, 0);
    expect(tonne.name, 'Tonne');
    expect(tonne.pluralName, 'Tonnes');
    expect(tonne.symbol, 't');
    expect(tonne.toString(), '0 t');
  });

  test('conversion', () {
    final Tonne tonne = Tonne();
    for (final Mass unit in Mass.values) {
      expect(
        Unitz.convert(from: tonne, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Tonne tonne = Tonne(1);
    for (final Unit unit in unitList) {
      expect(tonne.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Tonne tonne = Tonne(1);
    for (final Unit unit in unitList) {
      expect(tonne == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Tonne tonne1 = Tonne(1);
    expect(tonne1.toString(), '1 t');
    final Tonne tonne2 = Tonne(2);
    expect(tonne2.toString(), '2 t');
    final Tonne tonne3 = Tonne(3000);
    expect(tonne3.toString(), '3 kt');
    final Tonne tonne4 = Tonne(4000000);
    expect(tonne4.toString(), '4 Mt');
  });
}
