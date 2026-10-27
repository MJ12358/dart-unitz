import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Second(Day().scale),
  Minute(1440),
  Hour(24),
  Day(1),
  Week(1 / 7),
  Year(1 / 365.2425),
];

void main() {
  test('constructor', () {
    final Day day = Day();
    expect(day.value, 0);
    expect(day.name, 'Day');
    expect(day.pluralName, 'Days');
    expect(day.symbol, 'd');
    expect(day.toString(), '0 d');
  });

  test('conversion', () {
    final Day day = Day();
    for (final Unit unit in Time.values) {
      expect(
        Unitz.convert(from: day, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Day day = Day(1);
    for (final Unit unit in unitList) {
      expect(day.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Day day = Day(1);
    for (final Unit unit in unitList) {
      expect(day == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Day d1 = Day(1);
    expect(d1.toString(), '1 d');
    final Day d2 = Day(2);
    expect(d2.toString(), '2 d');
    final Day d3 = Day(3000);
    expect(d3.toString(), '3 kd');
    final Day d4 = Day(4000000);
    expect(d4.toString(), '4 Md');
  });
}
