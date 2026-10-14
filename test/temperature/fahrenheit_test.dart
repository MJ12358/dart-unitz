import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Fahrenheit f = Fahrenheit();
    expect(f.value, 0);
    expect(f.name, 'Fahrenheit');
    expect(f.pluralName, 'Fahrenheit');
    expect(f.symbol, '°F');
    expect(f.toString(), '0 °F');
  });

  test('conversion (boiling)', () {
    final Temperature f = Temperature.boilingMap[Fahrenheit()]!;
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: f, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    final Temperature f = Temperature.freezingMap[Fahrenheit()]!;
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: f, to: t),
        Temperature.freezingMap[t],
      );
    }
  });
}
