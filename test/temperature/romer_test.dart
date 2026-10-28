import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Celsius(-12.381),
  Fahrenheit(9.7143),
  Delisle(168.57),
  Kelvin(260.77),
  Rankine(469.38),
  Reaumur(-9.9048),
];

void main() {
  test('constructor', () {
    final Romer r = Romer();
    expect(r.value, 0);
    expect(r.name, 'Rømer');
    expect(r.pluralName, 'Rømer');
    expect(r.symbol, '°Rø');
    expect(r.toString(), '0 °Rø');
    expect(r.instance(), isA<Romer>());
  });

  test('conversion (boiling)', () {
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: Romer().boiling, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: Romer().freezing, to: t),
        Temperature.freezingMap[t],
      );
    }
  });

  test('compare', () {
    final Romer r = Romer(1);
    for (final Unit unit in unitList) {
      expect(r.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Romer r = Romer(1);
    for (final Unit unit in unitList) {
      expect(r == unit, isTrue);
    }
  });

  test('toString', () {
    final Romer r1 = Romer(1);
    expect(r1.toString(), '1 °Rø');
    final Romer r2 = Romer(2);
    expect(r2.toString(), '2 °Rø');
    final Romer r3 = Romer(3000);
    expect(r3.toString(), '3000 °Rø');
    final Romer r4 = Romer(4000000);
    expect(r4.toString(), '4000000 °Rø');
  });
}
