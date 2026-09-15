import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Inch inch = Inch();
    expect(inch.value, 0);
    expect(inch.name, 'Inch');
    expect(inch.pluralName, 'Inches');
    expect(inch.symbol, 'in');
    expect(inch.toString(), '0 in');
  });

  test('conversion', () {
    final Inch inch = Inch();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: inch, to: unit),
        unit,
      );
    }
  });
}
