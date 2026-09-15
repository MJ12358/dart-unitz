import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('constructor', () {
    final ArcSecond arcsecond = ArcSecond();
    expect(arcsecond.value, 0);
    expect(arcsecond.name, 'Arc Second');
    expect(arcsecond.pluralName, 'Arc Seconds');
    expect(arcsecond.symbol, '"');
    expect(arcsecond.toString(), '0 "');
  });

  test('conversion', () {
    final ArcSecond arcsecond = ArcSecond();
    for (final Unit unit in Angle.values) {
      expect(
        Unitz.convert(from: arcsecond, to: unit),
        unit,
      );
    }
  });
}
