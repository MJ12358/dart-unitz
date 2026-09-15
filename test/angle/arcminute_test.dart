import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final ArcMinute arcminute = ArcMinute();
    expect(arcminute.value, 0);
    expect(arcminute.name, 'Arc Minute');
    expect(arcminute.pluralName, 'Arc Minutes');
    expect(arcminute.symbol, "'");
    expect(arcminute.toString(), "0 '");
  });

  test('conversion', () {
    final ArcMinute arcminute = ArcMinute();
    for (final Unit unit in Angle.values) {
      expect(
        Unitz.convert(from: arcminute, to: unit),
        unit,
      );
    }
  });
}
