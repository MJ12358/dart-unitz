import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Chain(1 / Chain().scale),
  Foot(1 / Foot().scale),
  Inch(1 / Inch().scale),
  Yard(1 / Yard().scale),
  Mile(1 / Mile().scale),
  LightYear(1 / LightYear().scale),
];

void main() {
  test('constructor', () {
    final Metre metre = Metre();
    expect(metre.value, 0);
    expect(metre.name, 'Metre');
    expect(metre.pluralName, 'Metres');
    expect(metre.symbol, 'm');
    expect(metre.toString(), '0 m');
    expect(metre.instance(), isA<Metre>());
  });

  test('constructor (alt)', () {
    final Meter meter = Meter();
    expect(meter.value, 0);
    expect(meter.name, 'Meter');
    expect(meter.pluralName, 'Meters');
    expect(meter.symbol, 'm');
    expect(meter.toString(), '0 m');
    expect(meter.instance(), isA<Meter>());
  });

  test('conversion', () {
    final Metre metre = Metre();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: metre, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Metre metre = Metre(1);
    for (final Unit unit in unitList) {
      expect(metre.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Metre metre = Metre(1);
    for (final Unit unit in unitList) {
      expect(metre == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Metre metre1 = Metre(1);
    expect(metre1.toString(), '1 m');
    final Metre metre2 = Metre(2);
    expect(metre2.toString(), '2 m');
    final Metre metre3 = Metre(3000);
    expect(metre3.toString(), '3 km');
    final Metre metre4 = Metre(4000000);
    expect(metre4.toString(), '4 Mm');
  });
}
