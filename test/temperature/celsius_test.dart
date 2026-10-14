import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Celsius c = Celsius();
    expect(c.value, 0);
    expect(c.name, 'Celsius');
    expect(c.pluralName, 'Celsius');
    expect(c.symbol, '°C');
    expect(c.toString(), '0 °C');
  });

  test('conversion (boiling)', () {
    final Temperature c = Temperature.boilingMap[Celsius()]!;
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: c, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    final Temperature c = Temperature.freezingMap[Celsius()]!;
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: c, to: t),
        Temperature.freezingMap[t],
      );
    }
  });
}
