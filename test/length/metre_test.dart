import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Metre metre = Metre();
    expect(metre.value, 0);
    expect(metre.name, 'Metre');
    expect(metre.pluralName, 'Metres');
    expect(metre.symbol, 'm');
    expect(metre.toString(), '0 m');
    // Alternative symbol for metre is "meter"
    final Meter meter = Meter();
    expect(meter.value, 0);
    expect(meter.name, 'Meter');
    expect(meter.pluralName, 'Meters');
    expect(meter.symbol, 'm');
    expect(meter.toString(), '0 m');
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
}
