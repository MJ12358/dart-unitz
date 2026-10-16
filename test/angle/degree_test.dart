import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  ArcSecond(3600),
  ArcMinute(60),
  Gradian(1.111111),
  Radian(0.0174533),
];

void main() {
  test('constructor', () {
    final Degree degree = Degree();
    expect(degree.value, 0);
    expect(degree.name, 'Degree');
    expect(degree.pluralName, 'Degrees');
    expect(degree.symbol, '°');
    expect(degree.toString(), '0 °');
  });

  test('conversion', () {
    final Degree degree = Degree();
    for (final Unit unit in Angle.values) {
      expect(
        Unitz.convert(from: degree, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Degree degree = Degree(1);
    for (final Unit unit in unitList) {
      expect(degree.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Degree degree = Degree(1);
    for (final Unit unit in unitList) {
      expect(degree == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true; // Angle uses a NullPrefix
    final Degree degree1 = Degree(1);
    expect(degree1.toString(), '1 °');
    final Degree degree2 = Degree(2);
    expect(degree2.toString(), '2 °');
    final Degree degree3 = Degree(3000);
    expect(degree3.toString(), '3000 °');
    final Degree degree4 = Degree(4000000);
    expect(degree4.toString(), '4000000 °');
  });
}
