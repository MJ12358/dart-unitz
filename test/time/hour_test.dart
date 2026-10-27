import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Second(Hour().scale),
  Minute(60),
  Hour(1),
  Day(1 / 24),
  Week(1 / 168),
  Year(1 / 8765.81),
];

void main() {
  test('constructor', () {
    final Hour hour = Hour();
    expect(hour.value, 0);
    expect(hour.name, 'Hour');
    expect(hour.pluralName, 'Hours');
    expect(hour.symbol, 'h');
    expect(hour.toString(), '0 h');
  });

  test('conversion', () {
    final Hour hour = Hour();
    for (final Unit unit in Time.values) {
      expect(
        Unitz.convert(from: hour, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Hour hour = Hour(1);
    for (final Unit unit in unitList) {
      expect(hour.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Hour hour = Hour(1);
    for (final Unit unit in unitList) {
      expect(hour == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Hour h1 = Hour(1);
    expect(h1.toString(), '1 h');
    final Hour h2 = Hour(2);
    expect(h2.toString(), '2 h');
    final Hour h3 = Hour(3000);
    expect(h3.toString(), '3 kh');
    final Hour h4 = Hour(4000000);
    expect(h4.toString(), '4 Mh');
  });
}
