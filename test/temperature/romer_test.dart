import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Romer r = Romer();
    expect(r.value, 0);
    expect(r.name, 'Rømer');
    expect(r.pluralName, 'Rømer');
    expect(r.symbol, '°Rø');
    expect(r.toString(), '0 °Rø');
  });

  test('conversion (boiling)', () {
    final Temperature r = Temperature.boilingMap[Romer()]!;
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: r, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    final Temperature r = Temperature.freezingMap[Romer()]!;
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: r, to: t),
        Temperature.freezingMap[t],
      );
    }
  });
}
