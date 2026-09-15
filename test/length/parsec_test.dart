import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Parsec pc = Parsec();
    expect(pc.value, 0);
    expect(pc.name, 'Parsec');
    expect(pc.pluralName, 'Parsecs');
    expect(pc.symbol, 'pc');
    expect(pc.toString(), '0 pc');
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
}
