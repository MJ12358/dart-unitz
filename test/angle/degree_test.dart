import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Degree degree = Degree();
    expect(degree.value, 0);
    expect(degree.name, 'Degree');
    expect(degree.pluralName, 'Degrees');
    expect(degree.symbol, '°');
    expect(degree.toString(), '0 °');
  });

  test('conversion', () {
    final Degree degree = Degree();
    for (final Unit unit in Angle.values) {
      expect(
        Unitz.convert(from: degree, to: unit),
        unit,
      );
    }
  });
}
