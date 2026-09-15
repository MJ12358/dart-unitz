import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final Radian radian = Radian();
    expect(radian.value, 0);
    expect(radian.name, 'Radian');
    expect(radian.pluralName, 'Radians');
    expect(radian.symbol, 'rad');
    expect(radian.toString(), '0 rad');
  });

  test('conversion', () {
    final Radian radian = Radian();
    for (final Unit unit in Angle.values) {
      expect(
        Unitz.convert(from: radian, to: unit),
        unit,
      );
    }
  });
}
