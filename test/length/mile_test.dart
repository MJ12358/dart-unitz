import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Metre(Mile().scale),
];

void main() {
  test('constructor', () {
    final Mile mile = Mile();
    expect(mile.value, 0);
    expect(mile.name, 'Mile');
    expect(mile.pluralName, 'Miles');
    expect(mile.symbol, 'mi');
    expect(mile.toString(), '0 mi');
  });

  test('conversion', () {
    final Mile mile = Mile();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: mile, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Mile mile = Mile(1);
    for (final Unit unit in unitList) {
      expect(mile.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Mile mile = Mile(1);
    for (final Unit unit in unitList) {
      expect(mile == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Mile mile1 = Mile(1);
    expect(mile1.toString(), '1 mi');
    final Mile mile2 = Mile(2);
    expect(mile2.toString(), '2 mi');
    final Mile mile3 = Mile(3000);
    expect(mile3.toString(), '3 kmi');
    final Mile mile4 = Mile(4000000);
    expect(mile4.toString(), '4 Mmi');
  });
}
