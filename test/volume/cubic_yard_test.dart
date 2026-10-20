import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicInch(46656),
  CubicFoot(27),
  CubicMetre(CubicYard().factor),
  Litre(764.555),
];

void main() {
  test('constructor', () {
    final CubicYard cubicYard = CubicYard();
    expect(cubicYard.value, 0);
    expect(cubicYard.name, 'Cubic yard');
    expect(cubicYard.pluralName, 'Cubic yards');
    expect(cubicYard.symbol, 'yd³');
    expect(cubicYard.toString(), '0 yd³');
  });

  test('conversion', () {
    final CubicYard cubicYard = CubicYard();
    for (final Volume unit in Volume.values) {
      expect(
        Unitz.convert(from: cubicYard, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final CubicYard cubicYard = CubicYard(1);
    for (final Unit unit in unitList) {
      expect(cubicYard.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final CubicYard cubicYard = CubicYard(1);
    for (final Unit unit in unitList) {
      expect(cubicYard == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final CubicYard cubicYard1 = CubicYard(1);
    expect(cubicYard1.toString(), '1 yd³');
    final CubicYard cubicYard2 = CubicYard(2);
    expect(cubicYard2.toString(), '2 yd³');
    final CubicYard cubicYard3 = CubicYard(3000);
    expect(cubicYard3.toString(), '3 kyd³');
    final CubicYard cubicYard4 = CubicYard(4000000);
    expect(cubicYard4.toString(), '4 Myd³');
  });
}
