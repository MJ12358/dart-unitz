import 'dart:math';

import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('decimalPrefixOrder', () {
    final List<UnitPrefix> arr = Unitz.decimalPrefixes;

    for (int i = 1; i < arr.length; i++) {
      final UnitPrefix p1 = arr[i];
      final UnitPrefix p2 = arr[i - 1];
      expect(p1.power < p2.power, true);
    }
  });

  test('binaryPrefixOrder', () {
    final List<UnitPrefix> arr = Unitz.binaryPrefixes;

    for (int i = 1; i < arr.length; i++) {
      final UnitPrefix p1 = arr[i];
      final UnitPrefix p2 = arr[i - 1];
      expect(p1.power < p2.power, true);
    }
  });

  test('decimalValuePrefix', () {
    Unitz.usePrefix = true;

    final Map<Unit, String> results = <Unit, String>{
      Metre(1e-30): '1 qm',
      Meter(1e-27): '1 rm',
      Metre(1e-24): '1 ym',
      Metre(1e-21): '1 zm',
      Metre(1e-18): '1 am',
      Metre(1e-15): '1 fm',
      Metre(1e-12): '1 pm',
      Metre(1e-9): '1 nm',
      Metre(1e-6): '1 μm',
      Metre(1e-3): '1 mm',
      Metre(1e-2): '1 cm',
      Metre(1e-1): '1 dm',
      Metre(1): '1 m',
      Metre(1e+1): '1 dam',
      Metre(1e+2): '1 hm',
      Metre(1e+3): '1 km',
      Metre(1e+6): '1 Mm',
      Metre(1e+9): '1 Gm',
      Metre(1e+12): '1 Tm',
      Metre(1e+15): '1 Pm',
      Metre(1e+18): '1 Em',
      Metre(1e+21): '1 Zm',
      Metre(1e+24): '1 Ym',
      Meter(1e+27): '1 Rm',
      Metre(1e+30): '1 Qm',
    };

    for (final Unit u in results.keys) {
      expect(u.toString(), results[u]);
    }
  });

  test('binaryValuePrefix', () {
    Unitz.usePrefix = true;

    final Map<Unit, String> results = <Unit, String>{
      Bit(1): '1 b',
      Bit(1024): '1024 b',
      Bit(pow(2, 10)): '1 Kib',
      Bit(pow(2, 20)): '1 Mib',
      Bit(pow(2, 30)): '1 Gib',
      Bit(pow(2, 40)): '1 Tib',
      Bit(pow(2, 50)): '1 Pib',
      Bit(pow(2, 60)): '1 Eib',
      // Bit(pow(2, 70)): '1 Zib', //TODO: num too large
      // Bit(pow(2, 80)): '1 Yib',
    };

    for (final Unit u in results.keys) {
      expect(u.toString(), results[u]);
    }
  });
}
