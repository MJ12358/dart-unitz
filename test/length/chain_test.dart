import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Metre(Chain().factor),
  Foot(66),
  Inch(792),
  Yard(22),
  Mile(0.0125),
];

void main() {
  test('constructor', () {
    final Chain chain = Chain();
    expect(chain.value, 0);
    expect(chain.name, 'Chain');
    expect(chain.pluralName, 'Chains');
    expect(chain.symbol, 'ch');
    expect(chain.toString(), '0 ch');
  });

  test('conversion', () {
    final Chain chain = Chain();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: chain, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Chain chain = Chain(1);
    for (final Unit unit in unitList) {
      expect(chain.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Chain chain = Chain(1);
    for (final Unit unit in unitList) {
      expect(chain == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Chain chain1 = Chain(1);
    expect(chain1.toString(), '1 ch');
    final Chain chain2 = Chain(2);
    expect(chain2.toString(), '2 ch');
    final Chain chain3 = Chain(3000);
    expect(chain3.toString(), '3 kch');
    final Chain chain4 = Chain(4000000);
    expect(chain4.toString(), '4 Mch');
  });
}
