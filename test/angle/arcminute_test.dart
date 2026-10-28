import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  ArcSecond(60),
  Degree(0.016667),
  Gradian(0.018519),
  Radian(0.000291),
];

void main() {
  test('constructor', () {
    final ArcMinute arcminute = ArcMinute();
    expect(arcminute.value, 0);
    expect(arcminute.name, 'Arc Minute');
    expect(arcminute.pluralName, 'Arc Minutes');
    expect(arcminute.symbol, "'");
    expect(arcminute.toString(), "0 '");
    expect(arcminute.instance(), isA<ArcMinute>());
  });

  test('conversion', () {
    final ArcMinute arcminute = ArcMinute();
    for (final Unit unit in Angle.values) {
      expect(
        Unitz.convert(from: arcminute, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final ArcMinute arcminute = ArcMinute(1);
    for (final Unit unit in unitList) {
      expect(arcminute.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final ArcMinute arcminute = ArcMinute(1);
    for (final Unit unit in unitList) {
      expect(arcminute == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true; // Angle uses a NullPrefix
    final ArcMinute arcminute1 = ArcMinute(1);
    expect(arcminute1.toString(), "1 '");
    final ArcMinute arcminute2 = ArcMinute(2);
    expect(arcminute2.toString(), "2 '");
    final ArcMinute arcminute3 = ArcMinute(3000);
    expect(arcminute3.toString(), "3000 '");
    final ArcMinute arcminute4 = ArcMinute(4000000);
    expect(arcminute4.toString(), "4000000 '");
  });
}
