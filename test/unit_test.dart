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
  test('categories have registered values list', () {
    for (final Type c in Unitz.categories) {
      expect(instancesOf(c), isNotEmpty, reason: 'No values for $c');
    }
  });

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
          0,
          reason: '${u.runtimeType} is LinearUnit but offset != 0',
        );
        expect(u.isAffine, isFalse);
      }
    }
  });
}
