import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
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

  test('compareTo is consistent with ==', () {
    final List<Unit> units = <Unit>[
      Metre(1),
      Metre(2),
      Metre(2),
      Foot(3.28084),
      Kilogram(1),
      Second(1),
      Celsius().freezing,
    ];
    for (final Unit a in units) {
      for (final Unit b in units) {
        expect(
          a.compareTo(b) == 0,
          equals(a == b),
          reason: 'compareTo/== disagree for $a vs $b',
        );
      }
    }
  });

  test('relational operators agree with ==', () {
    final List<Unit> units = <Unit>[
      Metre(1),
      Meter(2),
      Kilogram(1),
      Second(1),
    ];
    for (final Unit a in units) {
      for (final Unit b in units) {
        // Exactly one of <, ==, > must hold for a total order.
        final bool lt = a < b;
        final bool eq = a == b;
        final bool gt = a > b;
        expect(lt || eq || gt, isTrue, reason: '$a vs $b: none of <,==,>');
        expect(
          <bool>[lt, eq, gt].where((bool x) => x).length,
          1,
          reason: '$a vs $b: more than one of <,==,>',
        );
        // <= and >= must agree with <, ==, >
        expect(a <= b, equals(lt || eq));
        expect(a >= b, equals(gt || eq));
      }
    }
  });

  test('cross-family compareTo is non-zero', () {
    expect(Metre(1).compareTo(Kilogram(1)), isNot(0));
    expect(Kilogram(1).compareTo(Metre(1)), isNot(0));
  });

  test('sorting a mixed-family list does not throw', () {
    final List<Unit> units = <Unit>[Kilogram(1), Metre(2), Second(1), Metre(1)];
    expect(units.sort, returnsNormally);
    // Same-family order is preserved within the mixed order:
    final List<Metre> metres = units.whereType<Metre>().toList();
    expect(metres.first.value, lessThanOrEqualTo(metres.last.value));
  });
}
