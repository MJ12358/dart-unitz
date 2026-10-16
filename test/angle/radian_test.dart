import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  ArcSecond(206264.806247),
  ArcMinute(3437.746771),
  Degree(57.29578),
  Gradian(63.661977),
];

void main() {
  test('constructor', () {
    final Radian radian = Radian();
    expect(radian.value, 0);
    expect(radian.name, 'Radian');
    expect(radian.pluralName, 'Radians');
    expect(radian.symbol, 'rad');
    expect(radian.toString(), '0 rad');
  });

  test('conversion', () {
    final Radian radian = Radian();
    for (final Unit unit in Angle.values) {
      expect(
        Unitz.convert(from: radian, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Radian radian = Radian(1);
    for (final Unit unit in unitList) {
      expect(radian.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Radian radian = Radian(1);
    for (final Unit unit in unitList) {
      expect(radian == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true; // Angle uses a NullPrefix
    final Radian radian1 = Radian(1);
    expect(radian1.toString(), '1 rad');
    final Radian radian2 = Radian(2);
    expect(radian2.toString(), '2 rad');
    final Radian radian3 = Radian(3000);
    expect(radian3.toString(), '3000 rad');
    final Radian radian4 = Radian(4000000);
    expect(radian4.toString(), '4000000 rad');
  });
}
