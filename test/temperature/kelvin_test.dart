import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Kelvin k = Kelvin();
    expect(k.value, 0);
    expect(k.name, 'Kelvin');
    expect(k.pluralName, 'Kelvin');
    expect(k.symbol, 'K');
    expect(k.toString(), '0 K');
  });

  test('conversion (boiling)', () {
    final Temperature k = Temperature.boilingMap[Kelvin()]!;
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: k, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    final Temperature k = Temperature.freezingMap[Kelvin()]!;
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: k, to: t),
        Temperature.freezingMap[t],
      );
    }
  });
}
