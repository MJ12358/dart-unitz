import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Second(Month().factor),
  Minute(43829.1),
  Hour(730.485),
  Day(30.436875),
  Week(4.348125),
  Year(1 / 12),
];

void main() {
  test('constructor', () {
    final Month month = Month();
    expect(month.value, 0);
    expect(month.name, 'Month');
    expect(month.pluralName, 'Months');
    expect(month.symbol, 'mo');
    expect(month.toString(), '0 mo');
  });

  test('conversion', () {
    final Month month = Month();
    for (final Unit unit in Time.values) {
      expect(
        Unitz.convert(from: month, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Month month = Month(1);
    for (final Unit unit in unitList) {
      expect(month.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Month month = Month(1);
    for (final Unit unit in unitList) {
      expect(month == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Month m1 = Month(1);
    expect(m1.toString(), '1 mo');
    final Month m2 = Month(2);
    expect(m2.toString(), '2 mo');
    final Month m3 = Month(3000);
    expect(m3.toString(), '3 kmo');
    final Month m4 = Month(4000000);
    expect(m4.toString(), '4 Mmo');
  });
}
