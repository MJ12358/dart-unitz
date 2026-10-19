import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  ArcMinute(0.016667),
  Degree(0.000278),
  Gradian(0.000309),
  Radian(4.84814e-6),
];

void main() {
  test('constructor', () {
    final ArcSecond arcsecond = ArcSecond();
    expect(arcsecond.value, 0);
    expect(arcsecond.name, 'Arc Second');
    expect(arcsecond.pluralName, 'Arc Seconds');
    expect(arcsecond.symbol, '"');
    expect(arcsecond.toString(), '0 "');
  });

  test('conversion', () {
    final ArcSecond arcsecond = ArcSecond();
    for (final Unit unit in Angle.values) {
      expect(
        Unitz.convert(from: arcsecond, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final ArcSecond arcsecond = ArcSecond(1);
    for (final Unit unit in unitList) {
      expect(arcsecond.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final ArcSecond arcsecond = ArcSecond(1);
    for (final Unit unit in unitList) {
      expect(arcsecond == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true; // Angle uses a NullPrefix
    final ArcSecond arcsecond1 = ArcSecond(1);
    expect(arcsecond1.toString(), '1 "');
    final ArcSecond arcsecond2 = ArcSecond(2);
    expect(arcsecond2.toString(), '2 "');
    final ArcSecond arcsecond3 = ArcSecond(3000);
    expect(arcsecond3.toString(), '3000 "');
    final ArcSecond arcsecond4 = ArcSecond(4000000);
    expect(arcsecond4.toString(), '4000000 "');
  });
}
