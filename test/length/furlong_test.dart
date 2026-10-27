import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Metre(Furlong().scale),
  // Chain(0.01515152),
];

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

  test('compare', () {
    final Furlong furlong = Furlong(1);
    for (final Unit unit in unitList) {
      expect(furlong.compareTo(unit), 0);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Furlong furlong1 = Furlong(1);
    expect(furlong1.toString(), '1 fur');
    final Furlong furlong2 = Furlong(2);
    expect(furlong2.toString(), '2 fur');
    final Furlong furlong3 = Furlong(3000);
    expect(furlong3.toString(), '3 kfur');
    final Furlong furlong4 = Furlong(4000000);
    expect(furlong4.toString(), '4 Mfur');
  });
}
