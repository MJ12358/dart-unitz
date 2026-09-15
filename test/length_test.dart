import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

Map<Unit, Unit> unitMap = <Unit, Unit>{
  AstronomicalUnit(): AstronomicalUnit(1.495978707e11),
  Chain(): Chain(20.1168),
  Foot(): Foot(3.2808),
  Furlong(): Furlong(201.168),
  Inch(): Inch(39.37),
  LightYear(): LightYear(9.4607e15),
  Metre(): Metre(1),
  Mile(): Mile(0.000621371),
  Parsec(): Parsec(3.0856775814913673e16),
  Yard(): Yard(1.09361),
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
