import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final LightYear ly = LightYear();
    expect(ly.value, 0);
    expect(ly.name, 'Light Year');
    expect(ly.pluralName, 'Light Years');
    expect(ly.symbol, 'ly');
    expect(ly.toString(), '0 ly');
  });

  test('conversion', () {
    final LightYear ly = LightYear();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: ly, to: unit),
        unit,
      );
    }
  });
}
