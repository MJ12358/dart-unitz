import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Rankine r = Rankine();
    expect(r.value, 0);
    expect(r.name, 'Rankine');
    expect(r.pluralName, 'Rankine');
    expect(r.symbol, '°Ra');
    expect(r.toString(), '0 °Ra');
  });

  test('conversion (boiling)', () {
    final Temperature r = Temperature.boilingMap[Rankine()]!;
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: r, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    final Temperature r = Temperature.freezingMap[Rankine()]!;
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: r, to: t),
        Temperature.freezingMap[t],
      );
    }
  });
}
