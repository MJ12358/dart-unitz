import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

List<Unit> unitList = <Unit>[
  CubicInch(1.8046875000984),
  CubicFoot(0.001044379340335),
  CubicMetre(FluidOunce().scale),
  CubicYard(0.000038680716308),
  Gallon(0.0078125000004244),
  Litre(0.029573529564112),
  Tablespoon(2),
  Teaspoon(6),
];

void main() {
  Unitz.precision = 6;
  test('constructor', () {
    final FluidOunce fluidOunce = FluidOunce();
    expect(fluidOunce.value, 0);
    expect(fluidOunce.name, 'Fluid Ounce');
    expect(fluidOunce.pluralName, 'Fluid Ounces');
    expect(fluidOunce.symbol, 'fl oz');
    expect(fluidOunce.toString(), '0 fl oz');
    expect(fluidOunce.instance(), isA<FluidOunce>());
  });

  test('conversion', () {
    final FluidOunce fluidOunce = FluidOunce();
    for (final Unit unit in Volume.values) {
      expect(
        Unitz.convert(from: fluidOunce, to: unit),
        unit,
      );
    }
  });

  test('compare', () {
    final FluidOunce fluidOunce = FluidOunce(1);
    for (final Unit unit in unitList) {
      expect(fluidOunce.compareTo(unit), 0);
    }
  });

  test('equality', () {
    final FluidOunce fluidOunce = FluidOunce(1);
    for (final Unit unit in unitList) {
      expect(fluidOunce == unit, isTrue);
    }
  });

  test('toString', () {
    Unitz.usePrefix = true;
    final FluidOunce fluidOunce1 = FluidOunce(1);
    expect(fluidOunce1.toString(), '1 fl oz');
    final FluidOunce fluidOunce2 = FluidOunce(2);
    expect(fluidOunce2.toString(), '2 fl oz');
    final FluidOunce fluidOunce3 = FluidOunce(3000);
    expect(fluidOunce3.toString(), '3 kfl oz');
    final FluidOunce fluidOunce4 = FluidOunce(4000000);
    expect(fluidOunce4.toString(), '4 Mfl oz');
  });
}
