import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

Map<Unit, Unit> metreMap = <Unit, Unit>{
  Foot(): Foot(3.2808),
  Inch(): Inch(39.37),
  Metre(): Metre(1),
};

void main() {
  test('equality', () {
    expect(Metre(0) == Metre(0), true);
    expect(Metre(0) != Metre(1), true);
    expect(Metre(0) == Foot(0), true);
    expect(Metre(0) != Foot(1), true);
    expect(Metre(1) == Foot(3.2808), true);

    expect(Metre(0) < Metre(1), true);
    expect(Metre(1) > Metre(0), true);
    expect(Metre(0) <= Metre(0), true);
    expect(Metre(0) >= Metre(0), true);
    expect(Metre(0) < Foot(1), true);
    expect(Metre(1) > Foot(0), true);
  });

  test('compare', () {
    expect(Metre(1).compareTo(Metre(1)), 0);
    expect(Metre(0).compareTo(Metre(1)), -1);
    expect(Metre(1).compareTo(Metre(0)), 1);
    expect(Metre(1).compareTo(Foot(3.2808)), 0);
    expect(Metre(0).compareTo(Foot(1)), -1);
    expect(Metre(1).compareTo(Foot(1)), 1);
  });

  test('addition', () {
    for (final Unit t in metreMap.keys) {
      expect(Foot(0) + metreMap[t]!, Foot(3.2808));
    }

    for (final Unit t in metreMap.keys) {
      expect(Inch(0) + metreMap[t]!, Inch(39.37));
    }

    for (final Unit t in metreMap.keys) {
      expect(Metre(0) + metreMap[t]!, Metre(1));
    }
  });
}
