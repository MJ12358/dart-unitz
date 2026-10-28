import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Metre(AstronomicalUnit().scale),
  // Chain(7.436465e+9),
  // Foot(4.908067e+11),
  // Inch(5.88968e+12),
  // Yard(1.636022e+11),
  // Mile(9.295581e+7),
  // Parsec(4.848102e-6),
];

void main() {
  test('constructor', () {
    final AstronomicalUnit au = AstronomicalUnit();
    expect(au.value, 0);
    expect(au.name, 'Astronomical Unit');
    expect(au.pluralName, 'Astronomical Units');
    expect(au.symbol, 'au');
    expect(au.toString(), '0 au');
    expect(au.instance(), isA<AstronomicalUnit>());
  });

  test('conversion', () {
    final AstronomicalUnit au = AstronomicalUnit();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: au, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final AstronomicalUnit au = AstronomicalUnit(1);
    for (final Unit unit in unitList) {
      expect(au.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final AstronomicalUnit au = AstronomicalUnit(1);
    for (final Unit unit in unitList) {
      expect(au == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final AstronomicalUnit au1 = AstronomicalUnit(1);
    expect(au1.toString(), '1 au');
    final AstronomicalUnit au2 = AstronomicalUnit(2);
    expect(au2.toString(), '2 au');
    final AstronomicalUnit au3 = AstronomicalUnit(3000);
    expect(au3.toString(), '3 kau');
    final AstronomicalUnit au4 = AstronomicalUnit(4000000);
    expect(au4.toString(), '4 Mau');
  });
}
