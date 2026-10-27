import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  Metre(Foot().scale),
  // Chain(0.01515152),
  Inch(12),
];

void main() {
  test('constructor', () {
    final Foot foot = Foot();
    expect(foot.value, 0);
    expect(foot.name, 'Foot');
    expect(foot.pluralName, 'Feet');
    expect(foot.symbol, 'ft');
    expect(foot.toString(), '0 ft');
  });

  test('conversion', () {
    final Foot foot = Foot();
    for (final Unit unit in Length.values) {
      expect(
        Unitz.convert(from: foot, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final Foot foot = Foot(1);
    for (final Unit unit in unitList) {
      expect(foot.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final Foot foot = Foot(1);
    for (final Unit unit in unitList) {
      expect(foot == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final Foot foot1 = Foot(1);
    expect(foot1.toString(), '1 ft');
    final Foot foot2 = Foot(2);
    expect(foot2.toString(), '2 ft');
    final Foot foot3 = Foot(3000);
    expect(foot3.toString(), '3 kft');
    final Foot foot4 = Foot(4000000);
    expect(foot4.toString(), '4 Mft');
  });
}
