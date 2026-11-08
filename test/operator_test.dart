import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('addition', () {
    final Metre m1 = Metre(2);
    final Metre m2 = Metre(3);
    final Unit r1 = m1 + m2;
    expect(r1.value, 5);
    final Celsius c1 = Celsius().freezing;
    final Celsius c2 = Celsius().boiling;
    final Unit r2 = c1 + c2;
    expect(r2, equals(Celsius().boiling));
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r3 = g1 + g2;
    expect(r3.value, 2000);
  });

  test('subtraction', () {
    final Metre m1 = Metre(5);
    final Metre m2 = Metre(3);
    final Unit r1 = m1 - m2;
    expect(r1.value, 2);
    final Celsius c1 = Celsius().boiling;
    final Celsius c2 = Celsius().freezing;
    final Unit r2 = c1 - c2;
    expect(r2, equals(Celsius().boiling));
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r3 = g1 - g2;
    expect(r3.value, 0);
  });

  test('multiplication', () {
    final Metre m1 = Metre(2);
    final Metre m2 = Metre(3);
    final Unit r1 = m1 * m2;
    expect(r1.value, 6);
    final Celsius c1 = Celsius().freezing;
    final Celsius c2 = Celsius().boiling;
    final Unit r2 = c1 * c2;
    expect(r2, equals(Celsius().freezing));
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r3 = g1 * g2;
    expect(r3.value, 1000000);
  });

  test('division', () {
    final Metre m1 = Metre(6);
    final Metre m2 = Metre(3);
    final Unit result = m1 / m2;
    expect(result.value, 2);
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r3 = g1 / g2;
    expect(r3.value, 1);
  });

  test('integer division', () {
    final Metre m1 = Metre(7);
    final Metre m2 = Metre(3);
    final Unit r1 = m1 ~/ m2;
    expect(r1.value, 2);
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r2 = g1 ~/ g2;
    expect(r2.value, 1);
  });

  test('modulo', () {
    final Metre m1 = Metre(7);
    final Metre m2 = Metre(3);
    final Unit r1 = m1 % m2;
    expect(r1.value, 1);
    final Gram g1 = Gram(1000);
    final Kilogram g2 = Kilogram(1);
    final Unit r2 = g1 % g2;
    expect(r2.value, 0);
  });

  test('negation', () {
    final Metre m = Metre(3);
    final Unit r1 = -m;
    expect(r1.value, -3);
    final Gram g = Gram(1000);
    final Unit r2 = -g;
    expect(r2.value, -1000);
  });

  test('less than', () {
    final Metre m1 = Metre(2);
    final Metre m2 = Metre(3);
    expect(m1 < m2, isTrue);
    final Gram g1 = Gram(2);
    final Gram g2 = Gram(3);
    expect(g1 < g2, isTrue);
  });

  test('less than or equal to', () {
    final Metre m1 = Metre(2);
    final Metre m2 = Metre(3);
    final Metre m3 = Metre(2);
    expect(m1 <= m2, isTrue);
    expect(m1 <= m3, isTrue);
    final Gram g1 = Gram(2);
    final Gram g2 = Gram(2);
    final Gram g3 = Gram(3);
    expect(g1 <= g2, isTrue);
    expect(g1 <= g3, isTrue);
  });

  test('greater than', () {
    final Metre m1 = Metre(4);
    final Metre m2 = Metre(3);
    expect(m1 > m2, isTrue);
    final Gram g1 = Gram(4);
    final Gram g2 = Gram(3);
    expect(g1 > g2, isTrue);
  });

  test('greater than or equal to', () {
    final Metre m1 = Metre(4);
    final Metre m2 = Metre(3);
    final Metre m3 = Metre(4);
    expect(m1 >= m2, isTrue);
    expect(m1 >= m3, isTrue);
    final Gram g1 = Gram(4);
    final Gram g2 = Gram(3);
    final Gram g3 = Gram(4);
    expect(g1 >= g2, isTrue);
    expect(g1 >= g3, isTrue);
  });
}
