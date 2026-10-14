import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Delisle d = Delisle();
    expect(d.value, 0);
    expect(d.name, 'Delisle');
    expect(d.pluralName, 'Delisle');
    expect(d.symbol, '°D');
    expect(d.toString(), '0 °D');
  });

  test('conversion (boiling)', () {
    final Temperature d = Temperature.boilingMap[Delisle()]!;
    for (final Temperature t in Temperature.boilingMap.keys) {
      expect(
        Unitz.convert(from: d, to: t),
        Temperature.boilingMap[t],
      );
    }
  });

  test('conversion (freezing)', () {
    final Temperature d = Temperature.freezingMap[Delisle()]!;
    for (final Temperature t in Temperature.freezingMap.keys) {
      expect(
        Unitz.convert(from: d, to: t),
        Temperature.freezingMap[t],
      );
    }
  });
}
