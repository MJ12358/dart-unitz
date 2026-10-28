import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Metre(Parsec().scale),
];

void main() {
  test('constructor', () {
    final Parsec pc = Parsec();
    expect(pc.value, 0);
    expect(pc.name, 'Parsec');
    expect(pc.pluralName, 'Parsecs');
    expect(pc.symbol, 'pc');
    expect(pc.toString(), '0 pc');
    expect(pc.instance(), isA<Parsec>());
  });

  test('conversion', () {
    final Parsec pc = Parsec();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: pc, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Parsec pc = Parsec(1);
    for (final Unit unit in unitList) {
      expect(pc.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Parsec pc = Parsec(1);
    for (final Unit unit in unitList) {
      expect(pc == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Parsec pc1 = Parsec(1);
    expect(pc1.toString(), '1 pc');
    final Parsec pc2 = Parsec(2);
    expect(pc2.toString(), '2 pc');
    final Parsec pc3 = Parsec(3000);
    expect(pc3.toString(), '3 kpc');
    final Parsec pc4 = Parsec(4000000);
    expect(pc4.toString(), '4 Mpc');
  });
}
