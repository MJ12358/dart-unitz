import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('addition', () {
    final Metre m1 = Metre(2);
    final Metre m2 = Metre(3);
    final Unit r1 = m1 + m2;
    expect(r1.value, 5);
    expect(r1, isA<Metre>());
    final Celsius c1 = Celsius().freezing;
    final Celsius c2 = Celsius().boiling;
    final Unit r2 = c1 + c2;
    expect(r2, equals(Celsius().boiling));
    expect(r2, isA<Celsius>());
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r3 = g1 + g2;
    expect(r3.value, 2000);
    expect(r3, isA<Gram>());
  });

  test('subtraction', () {
    final Metre m1 = Metre(5);
    final Metre m2 = Metre(3);
    final Unit r1 = m1 - m2;
    expect(r1.value, 2);
    expect(r1, isA<Metre>());
    final Celsius c1 = Celsius().boiling;
    final Celsius c2 = Celsius().freezing;
    final Unit r2 = c1 - c2;
    expect(r2, equals(Celsius().boiling));
    expect(r2, isA<Celsius>());
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r3 = g1 - g2;
    expect(r3.value, 0);
    expect(r3, isA<Gram>());
  });

  test('multiplication', () {
    final Metre m1 = Metre(2);
    final Metre m2 = Metre(3);
    final Unit r1 = m1 * m2;
    expect(r1.value, 6);
    expect(r1, isA<Metre>());
    final Celsius c1 = Celsius().freezing;
    final Celsius c2 = Celsius().boiling;
    final Unit r2 = c1 * c2;
    expect(r2, equals(Celsius().freezing));
    expect(r2, isA<Celsius>());
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r3 = g1 * g2;
    expect(r3.value, 1000000);
    expect(r3, isA<Gram>());
  });

  test('division', () {
    final Metre m1 = Metre(6);
    final Metre m2 = Metre(3);
    final Unit result = m1 / m2;
    expect(result.value, 2);
    expect(result, isA<Metre>());
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r3 = g1 / g2;
    expect(r3.value, 1);
    expect(r3, isA<Gram>());
  });

  test('integer division', () {
    final Metre m1 = Metre(7);
    final Metre m2 = Metre(3);
    final Unit r1 = m1 ~/ m2;
    expect(r1.value, 2);
    expect(r1, isA<Metre>());
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r2 = g1 ~/ g2;
    expect(r2.value, 1);
    expect(r2, isA<Gram>());
  });

  test('modulo', () {
    final Metre m1 = Metre(7);
    final Metre m2 = Metre(3);
    final Unit r1 = m1 % m2;
    expect(r1.value, 1);
    expect(r1, isA<Metre>());
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r2 = g1 % g2;
    expect(r2.value, 0);
    expect(r2, isA<Gram>());
  });

  test('negation', () {
    final Metre m = Metre(3);
    final Unit r1 = -m;
    expect(r1.value, -3);
    expect(r1, isA<Metre>());
    final Gram g = Gram(1000);
    final Unit r2 = -g;
    expect(r2.value, -1000);
    expect(r2, isA<Gram>());
  });
}
