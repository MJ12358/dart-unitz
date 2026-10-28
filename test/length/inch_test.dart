import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Metre(Inch().scale),
  Foot(0.08333333),
];

void main() {
  test('constructor', () {
    final Inch inch = Inch();
    expect(inch.value, 0);
    expect(inch.name, 'Inch');
    expect(inch.pluralName, 'Inches');
    expect(inch.symbol, 'in');
    expect(inch.toString(), '0 in');
    expect(inch.instance(), isA<Inch>());
  });

  test('conversion', () {
    final Inch inch = Inch();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: inch, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Inch inch = Inch(1);
    for (final Unit unit in unitList) {
      expect(inch.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Inch inch = Inch(1);
    for (final Unit unit in unitList) {
      expect(inch == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Inch inch1 = Inch(1);
    expect(inch1.toString(), '1 in');
    final Inch inch2 = Inch(2);
    expect(inch2.toString(), '2 in');
    final Inch inch3 = Inch(3000);
    expect(inch3.toString(), '3 kin');
    final Inch inch4 = Inch(4000000);
    expect(inch4.toString(), '4 Min');
  });
}
