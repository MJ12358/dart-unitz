import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

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
}
