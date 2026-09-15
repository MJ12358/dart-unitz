import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Yard yard = Yard();
    expect(yard.value, 0);
    expect(yard.name, 'Yard');
    expect(yard.pluralName, 'Yards');
    expect(yard.symbol, 'yd');
    expect(yard.toString(), '0 yd');
  });

  test('conversion', () {
    final Yard yard = Yard();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: yard, to: unit),
        unit,
      );
    }
  });
}
