import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

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
}
