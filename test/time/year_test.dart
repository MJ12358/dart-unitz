import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Second(Year().scale),
  Minute(525949.2),
  Hour(8765.82),
  Day(365.2425),
  Week(52.1775),
  Month(12),
];

void main() {
  setUp(() {
    Unitz.usePrefix = true;
  });

  tearDown(() {
    Unitz.usePrefix = false;
  });

  test('constructor', () {
    final Year year = Year();
    expect(year.value, 0);
    expect(year.name, 'Year');
    expect(year.pluralName, 'Years');
    expect(year.symbol, 'a');
    expect(year.toString(), '0 a');
    expect(year.instance(), isA<Year>());
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

  test('compare (explicit)', () {
    final Year year = Year(1);
    // Year is the Gregorian average, not 365 days or 52 weeks.
    expect(year == Day(365), isFalse);
    expect(year == Week(52), isFalse);
    // 12 average months is exactly one average year (integers, no float).
    expect(year == Month(12), isTrue);
    // The exact equivalents, with tolerance for float:
    expect(year.toBase(), closeTo(Day(365.2425).toBase(), 1e-3));
    expect(year.toBase(), closeTo(Week(52.1775).toBase(), 1e-3));
    // Common year and leap year comparisons
    final CommonYear commonYear = CommonYear(1);
    final LeapYear leapYear = LeapYear(1);
    expect(commonYear == Day(365), isTrue);
    expect(leapYear == Day(366), isTrue);
  });

  test('equality', () {
    final Year year = Year(1);
    for (final Unit unit in unitList) {
      expect(year == unit, isTrue);
    }
  });

  test('toString', () {
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
