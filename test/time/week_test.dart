import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Second(Week().scale),
  Minute(10080),
  Hour(168),
  Day(7),
  Week(1),
  Year(1 / 52.1775),
];

void main() {
  test('constructor', () {
    final Week week = Week();
    expect(week.value, 0);
    expect(week.name, 'Week');
    expect(week.pluralName, 'Weeks');
    expect(week.symbol, 'wk');
    expect(week.toString(), '0 wk');
    expect(week.instance(), isA<Week>());
  });

  test('conversion', () {
    final Week week = Week();
    for (final Unit unit in Time.values) {
      expect(
        Unitz.convert(from: week, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Week week = Week(1);
    for (final Unit unit in unitList) {
      expect(week.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Week week = Week(1);
    for (final Unit unit in unitList) {
      expect(week == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Week w1 = Week(1);
    expect(w1.toString(), '1 wk');
    final Week w2 = Week(2);
    expect(w2.toString(), '2 wk');
    final Week w3 = Week(3000);
    expect(w3.toString(), '3 kwk');
    final Week w4 = Week(4000000);
    expect(w4.toString(), '4 Mwk');
  });
}
