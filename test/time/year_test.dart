import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Second(Year().factor),
  Minute(525949.2),
  Hour(8765.82),
  Day(365.2425),
  Week(52.1775),
  Month(12),
];

void main() {
  test('constructor', () {
    final Year year = Year();
    expect(year.value, 0);
    expect(year.name, 'Year');
    expect(year.pluralName, 'Years');
    expect(year.symbol, 'a');
    expect(year.toString(), '0 a');
  });

  test('conversion', () {
    final Year year = Year();
    for (final Unit unit in Time.values) {
      expect(
        Unitz.convert(from: year, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Year year = Year(1);
    for (final Unit unit in unitList) {
      expect(year.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Year year = Year(1);
    for (final Unit unit in unitList) {
      expect(year == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Year y1 = Year(1);
    expect(y1.toString(), '1 a');
    final Year y2 = Year(2);
    expect(y2.toString(), '2 a');
    final Year y3 = Year(3000);
    expect(y3.toString(), '3 ka');
    final Year y4 = Year(4000000);
    expect(y4.toString(), '4 Ma');
  });
}
