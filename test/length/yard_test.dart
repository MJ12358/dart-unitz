import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Metre(Yard().scale),
];

void main() {
  test('constructor', () {
    final Yard yard = Yard();
    expect(yard.value, 0);
    expect(yard.name, 'Yard');
    expect(yard.pluralName, 'Yards');
    expect(yard.symbol, 'yd');
    expect(yard.toString(), '0 yd');
    expect(yard.instance(), isA<Yard>());
  });

  test('conversion', () {
    final Yard yard = Yard();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: yard, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Yard yard = Yard(1);
    for (final Unit unit in unitList) {
      expect(yard.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Yard yard = Yard(1);
    for (final Unit unit in unitList) {
      expect(yard == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Yard yard1 = Yard(1);
    expect(yard1.toString(), '1 yd');
    final Yard yard2 = Yard(2);
    expect(yard2.toString(), '2 yd');
    final Yard yard3 = Yard(3000);
    expect(yard3.toString(), '3 kyd');
    final Yard yard4 = Yard(4000000);
    expect(yard4.toString(), '4 Myd');
  });
}
