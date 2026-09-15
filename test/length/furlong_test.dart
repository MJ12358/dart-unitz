import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Furlong furlong = Furlong();
    expect(furlong.value, 0);
    expect(furlong.name, 'Furlong');
    expect(furlong.pluralName, 'Furlongs');
    expect(furlong.symbol, 'fur');
    expect(furlong.toString(), '0 fur');
  });

  test('conversion', () {
    final Furlong furlong = Furlong();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: furlong, to: unit),
        unit,
      );
    }
  });
}
