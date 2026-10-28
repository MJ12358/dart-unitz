import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Minute(1 / Minute().scale),
  Hour(1 / Hour().scale),
  Day(1 / Day().scale),
  Week(1 / Week().scale),
  Year(1 / Year().scale),
];

void main() {
  test('constructor', () {
    final Second second = Second();
    expect(second.value, 0);
    expect(second.name, 'Second');
    expect(second.pluralName, 'Seconds');
    expect(second.symbol, 's');
    expect(second.toString(), '0 s');
    expect(second.instance(), isA<Second>());
  });

  test('conversion', () {
    final Second second = Second();
    for (final Unit unit in Time.values) {
      expect(
        Unitz.convert(from: second, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Second second = Second(1);
    for (final Unit unit in unitList) {
      expect(second.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Second second = Second(1);
    for (final Unit unit in unitList) {
      expect(second == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Second s1 = Second(1);
    expect(s1.toString(), '1 s');
    final Second s2 = Second(2);
    expect(s2.toString(), '2 s');
    final Second s3 = Second(3000);
    expect(s3.toString(), '3 ks');
    final Second s4 = Second(4000000);
    expect(s4.toString(), '4 Ms');
  });
}
