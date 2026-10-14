import 'dart:math';

import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

Map<Unit, Unit> unitMap = <Unit, Unit>{
  ArcMinute(): ArcMinute(21600),
  ArcSecond(): ArcSecond(1296000),
  Degree(): Degree(360),
  Gradian(): Gradian(400),
  Radian(): Radian(2 * pi),
};

void main() {
  test('equality', () {
    expect(Degree(0) == Degree(0), true);
    expect(Degree(0) != Degree(360), true);
    expect(Degree(0) == Radian(0), true);
    expect(Degree(0) != Radian(2 * pi), true);
    expect(Degree(360) == Radian(2 * pi), true);

    expect(Degree(0) < Degree(360), true);
    expect(Degree(360) > Degree(0), true);
    expect(Degree(0) <= Degree(0), true);
    expect(Degree(0) >= Degree(0), true);
    expect(Degree(0) < Radian(2 * pi), true);
    expect(Degree(360) > Radian(0), true);
  });

  test('compare', () {
    expect(Degree(0).compareTo(Degree(0)), 0);
    expect(Degree(0).compareTo(Degree(360)), -1);
    expect(Degree(360).compareTo(Degree(0)), 1);
    expect(Degree(0).compareTo(Radian(0)), 0);
    expect(Degree(0).compareTo(Radian(2 * pi)), -1);
    expect(Degree(360).compareTo(Radian(0)), 1);
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
