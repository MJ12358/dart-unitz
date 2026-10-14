import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Reaumur r = Reaumur();
    expect(r.value, 0);
    expect(r.name, 'Réaumur');
    expect(r.pluralName, 'Réaumur');
    expect(r.symbol, '°Ré');
    expect(r.toString(), '0 °Ré');
  });

  test('conversion (boiling)', () {
    final Temperature r = Temperature.boilingMap[Reaumur()]!;
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: r, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    final Temperature r = Temperature.freezingMap[Reaumur()]!;
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: r, to: t),
        Temperature.freezingMap[t],
      );
    }
  });
}
