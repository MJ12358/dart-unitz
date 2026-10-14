import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

Map<Unit, Unit> unitMap = <Unit, Unit>{
  Bit(): Bit(1),
  Byte(): Byte(0.125),
};

void main() {
  test('equality', () {
    expect(Bit(0) == Bit(0), true);
    expect(Bit(0) != Bit(1), true);
    expect(Bit(0) == Byte(0), true);
    expect(Bit(0) != Byte(1), true);
    expect(Bit(8) == Byte(1), true);

    expect(Bit(0) < Bit(1), true);
    expect(Bit(1) > Bit(0), true);
    expect(Bit(0) <= Bit(0), true);
    expect(Bit(0) >= Bit(0), true);
    expect(Bit(7) < Byte(1), true);
    expect(Byte(1) > Bit(7), true);
  });

  test('compare', () {
    expect(Bit(1).compareTo(Bit(1)), 0);
    expect(Bit(0).compareTo(Bit(1)), -1);
    expect(Bit(1).compareTo(Bit(0)), 1);
    expect(Bit(8).compareTo(Byte(1)), 0);
    expect(Bit(7).compareTo(Byte(1)), -1);
    expect(Byte(1).compareTo(Bit(7)), 1);
  });

  test('addition', () {
    for (final Unit zero in unitMap.keys) {
      for (final MapEntry<Unit, Unit> entry in unitMap.entries) {
        expect(zero + entry.value, entry.value);
      }
    }
  });

  test('substraction', () {
    for (final Unit zero in unitMap.keys) {
      for (final MapEntry<Unit, Unit> entry in unitMap.entries) {
        expect(entry.value - entry.value, zero);
      }
    }
  });
}
