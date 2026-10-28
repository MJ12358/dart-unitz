import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  ArcSecond(3240),
  ArcMinute(54),
  Degree(0.9),
  Radian(0.015708),
];

void main() {
  test('constructor', () {
    final Gradian gradian = Gradian();
    expect(gradian.value, 0);
    expect(gradian.name, 'Gradian');
    expect(gradian.pluralName, 'Gradians');
    expect(gradian.symbol, 'grad');
    expect(gradian.toString(), '0 grad');
    expect(gradian.instance(), isA<Gradian>());
  });

  test('conversion', () {
    final Gradian gradian = Gradian();
    for (final Unit unit in Angle.values) {
      expect(
        Unitz.convert(from: gradian, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Gradian gradian = Gradian(1);
    for (final Unit unit in unitList) {
      expect(gradian.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Gradian gradian = Gradian(1);
    for (final Unit unit in unitList) {
      expect(gradian == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true; // Angle uses a NullPrefix
    final Gradian gradian1 = Gradian(1);
    expect(gradian1.toString(), '1 grad');
    final Gradian gradian2 = Gradian(2);
    expect(gradian2.toString(), '2 grad');
    final Gradian gradian3 = Gradian(3000);
    expect(gradian3.toString(), '3000 grad');
    final Gradian gradian4 = Gradian(4000000);
    expect(gradian4.toString(), '4000000 grad');
  });
}
