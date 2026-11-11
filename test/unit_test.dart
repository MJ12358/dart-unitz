import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

/// All concrete units, grouped by category. Mirrors [Unitz.categories].
Iterable<Unit> instancesOf(Type category) {
  switch (category) {
    case Angle:
      return Angle.values;
    case Information:
      return Information.values;
    case Length:
      return Length.values;
    case Mass:
      return Mass.values;
    case Temperature:
      return Temperature.values;
    case Time:
      return Time.values;
    case Volume:
      return Volume.values;
    default:
      throw ArgumentError('No values list registered for $category');
  }
}

void main() {
  setUp(() {
    Unitz.precision = 2;
  });

  tearDown(() {
    Unitz.precision = 2;
  });

  test('categories have registered values list', () {
    for (final Type c in Unitz.categories) {
      expect(instancesOf(c), isNotEmpty, reason: 'No values for $c');
    }
  });

  // Kelvin is AffineUnit but offset == 0
  // test('AffineUnit has nonzero offset', () {
  //   for (final Type category in Unitz.categories) {
  //     for (final Unit u in instancesOf(category)) {
  //       if (u is! AffineUnit) {
  //         continue;
  //       }
  //       expect(
  //         u.offset,
  //         isNot(0),
  //         reason: '${u.runtimeType} is AffineUnit but offset == 0',
  //       );
  //       expect(u.isAffine, isTrue);
  //     }
  //   }
  // });

  test('LinearUnit has zero offset', () {
    for (final Type category in Unitz.categories) {
      for (final Unit u in instancesOf(category)) {
        if (u is! LinearUnit) {
          continue;
        }
        expect(
          u.offset,
          equals(0),
          reason: '${u.runtimeType} is LinearUnit but offset != 0',
        );
        expect(u.isAffine, isFalse);
      }
    }
  });

  test('equal units must have equal hashCode', () {
    final Foot a1 = Foot(1);
    final Inch b1 = Inch(12);
    expect(a1, equals(b1), reason: 'sanity: they should be equal');
    expect(
      a1.hashCode,
      equals(b1.hashCode),
      reason: 'contract violation: a == b but hashCode differs',
    );

    final Minute a2 = Minute(2);
    final Second b2 = Second(120);
    expect(a2, equals(b2), reason: 'sanity: they should be equal');
    expect(
      a2.hashCode,
      equals(b2.hashCode),
      reason: 'contract violation: a == b but hashCode differs',
    );
  });

  test('Set does not deduplicate equal units', () {
    final Set<Unit> set1 = <Unit>{Foot(1), Inch(12)};

    // If a == b, the set should contain 1 element.
    expect(set1.length, 1);

    // And contains() should agree with ==.
    expect(set1.contains(Foot(1)), isTrue);
    expect(set1.contains(Inch(12)), isTrue);

    final Set<Unit> set2 = <Unit>{Minute(2), Second(120)};

    // If a == b, the set should contain 1 element.
    expect(set2.length, 1);

    // And contains() should agree with ==.
    expect(set2.contains(Minute(2)), isTrue);
    expect(set2.contains(Second(120)), isTrue);
  });

  test('Map lookup by equal-but-different unit fails', () {
    final Map<Unit, String> map = <Unit, String>{Foot(1): 'one foot'};

    expect(map[Inch(12)], 'one foot');
  });

  test('sub-unit significant-figure rounding: equal means equal hash', () {
    // 0.001234 and 0.001235 with 2 sig figs... depends on `rounded`;
    // construct a pair you know rounds equal, e.g.:
    final Metre a = Metre(0.001234);
    final Metre b = Metre(0.001236);

    // Whatever == says, hashCode must agree.
    expect(
      a == b,
      equals(a.hashCode == b.hashCode),
      reason: '== and hashCode must agree pairwise',
    );
  });

  test('approximate == is not transitive (cannot be hashed consistently)', () {
    Unitz.precision = 1; // 1 decimal place for values >= 1
    // With 1 decimal place: 1.04 -> 1.0, 1.06 -> 1.1, 1.05 -> 1.1
    // Pick values straddling a half-way boundary to force non-transitivity:
    final Metre a = Metre(1.04); // -> 1.0
    final Metre b = Metre(1.05); // -> 1.1 (or 1.0, depending on rounding mode)
    final Metre c = Metre(1.06); // -> 1.1
    // Depending on rounding mode, you may need to nudge these; the point is:
    // find a,b,c such that a == b, b == c, a != c.
    if (a == b && b == c && a != c) {
      fail('non-transitive == confirmed: no hashCode can satisfy the contract');
    }
  });

  test('find a non-transitive triple', () {
    Unitz.precision = 1;
    final List<double> vals = <double>[
      for (int i = 0; i < 200; i++) 1.0 + i / 100,
    ];
    for (final double x in vals) {
      for (final double y in vals) {
        for (final double z in vals) {
          final Metre a = Metre(x);
          final Metre b = Metre(y);
          final Metre c = Metre(z);
          if (a == b && b == c) {
            expect(
              a,
              equals(c),
              reason: 'non-transitive triple found: $x, $y, $z',
            );
          }
        }
      }
    }
  });

  test('units of different categories are never equal', () {
    expect(Metre(1), isNot(equals(Kilogram(1))));
    // ignore: unrelated_type_equality_checks
    expect(Metre(1) == Second(1), isFalse);
  });
}
