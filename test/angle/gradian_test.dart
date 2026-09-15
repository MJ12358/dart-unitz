import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Gradian gradian = Gradian();
    expect(gradian.value, 0);
    expect(gradian.name, 'Gradian');
    expect(gradian.pluralName, 'Gradians');
    expect(gradian.symbol, 'grad');
    expect(gradian.toString(), '0 grad');
  });

  test('conversion', () {
    final Gradian gradian = Gradian();
    for (final Unit unit in Angle.values) {
      expect(
        Unitz.convert(from: gradian, to: unit),
        unit,
      );
    }
  });
}
