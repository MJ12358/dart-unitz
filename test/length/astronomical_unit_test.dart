import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final AstronomicalUnit au = AstronomicalUnit();
    expect(au.value, 0);
    expect(au.name, 'Astronomical Unit');
    expect(au.pluralName, 'Astronomical Units');
    expect(au.symbol, 'au');
    expect(au.toString(), '0 au');
  });

  test('conversion', () {
    final AstronomicalUnit au = AstronomicalUnit();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: au, to: unit),
        unit,
      );
    }
  });
}
