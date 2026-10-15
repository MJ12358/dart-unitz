import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Metre(LightYear().factor),
];

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

  test('compare', () {
    final LightYear ly = LightYear(1);
    for (final Unit unit in unitList) {
      expect(ly.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final LightYear ly = LightYear(1);
    for (final Unit unit in unitList) {
      expect(ly == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final LightYear ly1 = LightYear(1);
    expect(ly1.toString(), '1 ly');
    final LightYear ly2 = LightYear(2);
    expect(ly2.toString(), '2 ly');
    final LightYear ly3 = LightYear(3000);
    expect(ly3.toString(), '3 kly');
    final LightYear ly4 = LightYear(4000000);
    expect(ly4.toString(), '4 Mly');
  });
}
