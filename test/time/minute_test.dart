import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Second(Minute().factor),
  Minute(1),
  Hour(1 / 60),
  Day(1 / 1440),
  Week(1 / 10080),
  Year(1 / 525949.2),
];

void main() {
  test('constructor', () {
    final Minute minute = Minute();
    expect(minute.value, 0);
    expect(minute.name, 'Minute');
    expect(minute.pluralName, 'Minutes');
    expect(minute.symbol, 'min');
    expect(minute.toString(), '0 min');
  });

  test('conversion', () {
    final Minute minute = Minute();
    for (final Unit unit in Time.values) {
      expect(
        Unitz.convert(from: minute, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Minute minute = Minute(1);
    for (final Unit unit in unitList) {
      expect(minute.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Minute minute = Minute(1);
    for (final Unit unit in unitList) {
      expect(minute == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Minute m1 = Minute(1);
    expect(m1.toString(), '1 min');
    final Minute m2 = Minute(2);
    expect(m2.toString(), '2 min');
    final Minute m3 = Minute(3000);
    expect(m3.toString(), '3 kmin');
    final Minute m4 = Minute(4000000);
    expect(m4.toString(), '4 Mmin');
  });
}
