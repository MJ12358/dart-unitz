import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Mile mile = Mile();
    expect(mile.value, 0);
    expect(mile.name, 'Mile');
    expect(mile.pluralName, 'Miles');
    expect(mile.symbol, 'mi');
    expect(mile.toString(), '0 mi');
  });

  test('conversion', () {
    final Mile mile = Mile();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: mile, to: unit),
        unit,
      );
    }
  });
}
