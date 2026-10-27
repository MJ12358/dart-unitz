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
  });

  test('division', () {
    final Metre m1 = Metre(6);
    final Metre m2 = Metre(3);
    final Unit result = m1 / m2;
    expect(result.value, 2);
  });

  test('integer division', () {
    final Metre m1 = Metre(7);
    final Metre m2 = Metre(3);
    final Unit result = m1 ~/ m2;
    expect(result.value, 2);
  });

  test('modulo', () {
    final Metre m1 = Metre(7);
    final Metre m2 = Metre(3);
    final Unit result = m1 % m2;
    expect(result.value, 1);
  });

  test('negation', () {
    final Metre m = Metre(3);
    final Unit result = -m;
    expect(result.value, -3);
  });

  test('less than', () {
    final Metre m1 = Metre(2);
    final Metre m2 = Metre(3);
    expect(m1 < m2, isTrue);
  });

  test('less than or equal to', () {
    final Metre m1 = Metre(2);
    final Metre m2 = Metre(3);
    final Metre m3 = Metre(2);
    expect(m1 <= m2, isTrue);
    expect(m1 <= m3, isTrue);
  });

  test('greater than', () {
    final Metre m1 = Metre(4);
    final Metre m2 = Metre(3);
    expect(m1 > m2, isTrue);
  });

  test('greater than or equal to', () {
    final Metre m1 = Metre(4);
    final Metre m2 = Metre(3);
    final Metre m3 = Metre(4);
    expect(m1 >= m2, isTrue);
    expect(m1 >= m3, isTrue);
  });
}
