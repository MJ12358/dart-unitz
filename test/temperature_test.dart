import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

Map<Unit, Unit> freezingMap = <Unit, Unit>{
  Celsius(): Celsius(0),
  Delisle(): Delisle(150),
  Fahrenheit(): Fahrenheit(32),
  Kelvin(): Kelvin(273.15),
  Rankine(): Rankine(491.67),
  Reaumur(): Reaumur(0),
  Romer(): Romer(7.5),
};

Map<Unit, Unit> boilingMap = <Unit, Unit>{
  Celsius(): Celsius(100),
  Delisle(): Delisle(0),
  Fahrenheit(): Fahrenheit(212),
  Kelvin(): Kelvin(373.15),
  Rankine(): Rankine(671.67),
  Reaumur(): Reaumur(80),
  Romer(): Romer(60),
};

void main() {
  test('equality', () {
    expect(Celsius(0) == Celsius(0), true);
    expect(Celsius(0) != Celsius(100), true);
    expect(Celsius(0) == Fahrenheit(32), true);
    expect(Celsius(0) != Fahrenheit(212), true);
  });

  test('compare', () {
    expect(Celsius(0).compareTo(Celsius(0)), 0);
    expect(Celsius(0).compareTo(Celsius(100)), -1);
    expect(Celsius(100).compareTo(Celsius(0)), 1);
    expect(Celsius(0).compareTo(Fahrenheit(32)), 0);
    expect(Celsius(0).compareTo(Fahrenheit(212)), -1);
    expect(Celsius(100).compareTo(Fahrenheit(32)), 1);
  });

  test('addition', () {
    for (final Unit t in boilingMap.keys) {
      expect(Celsius(0) + boilingMap[t]!, Celsius(100));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Delisle(150) + boilingMap[t]!, Delisle(150));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Fahrenheit(32) + boilingMap[t]!, Fahrenheit(244));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Kelvin(273.15) + boilingMap[t]!, Kelvin(646.3));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Rankine(491.67) + boilingMap[t]!, Rankine(1163.34));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Reaumur(0) + boilingMap[t]!, Reaumur(80));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Romer(7.5) + boilingMap[t]!, Romer(67.5));
    }
  });

  test('subtraction', () {
    for (final Unit t in boilingMap.keys) {
      expect(Celsius(0) - boilingMap[t]!, Celsius(-100));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Delisle(150) - boilingMap[t]!, Delisle(150));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Fahrenheit(32) - boilingMap[t]!, Fahrenheit(-180));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Kelvin(273.15) - boilingMap[t]!, Kelvin(-100));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Rankine(491.67) - boilingMap[t]!, Rankine(-180));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Reaumur(0) - boilingMap[t]!, Reaumur(-80));
    }

    for (final Unit t in boilingMap.keys) {
      expect(Romer(7.5) - boilingMap[t]!, Romer(-52.5));
    }
  });

  test('celsius', () {
    final Unit freezing = freezingMap[Celsius()]!;
    expect(freezing.name, 'Celsius');
    expect(freezing.symbol, '°C');
    expect(freezing.toString(), '0 °C');

    for (final Unit t in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: t),
        freezingMap[t],
      );
    }

    final Unit boiling = boilingMap[Celsius()]!;
    expect(boiling.toString(), '100 °C');

    for (final Unit t in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: t),
        boilingMap[t],
      );
    }
  });

  test('delisle', () {
    final Unit freezing = freezingMap[Delisle()]!;
    expect(freezing.name, 'Delisle');
    expect(freezing.symbol, '°D');
    expect(freezing.toString(), '150 °D');

    for (final Unit t in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: t),
        freezingMap[t],
      );
    }

    final Unit boiling = boilingMap[Delisle()]!;
    expect(boiling.toString(), '0 °D');

    for (final Unit t in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: t),
        boilingMap[t],
      );
    }
  });

  test('fahrenheit', () {
    final Unit freezing = freezingMap[Fahrenheit()]!;
    expect(freezing.name, 'Fahrenheit');
    expect(freezing.symbol, '°F');
    expect(freezing.toString(), '32 °F');

    for (final Unit t in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: t),
        freezingMap[t],
      );
    }

    final Unit boiling = boilingMap[Fahrenheit()]!;
    expect(boiling.toString(), '212 °F');

    for (final Unit t in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: t),
        boilingMap[t],
      );
    }
  });

  test('kelvin', () {
    final Unit freezing = freezingMap[Kelvin()]!;
    expect(freezing.name, 'Kelvin');
    expect(freezing.symbol, 'K');
    expect(freezing.toString(), '273.15 K');

    for (final Unit t in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: t),
        freezingMap[t],
      );
    }

    final Unit boiling = boilingMap[Kelvin()]!;
    expect(boiling.toString(), '373.15 K');

    for (final Unit t in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: t),
        boilingMap[t],
      );
    }
  });

  test('rankine', () {
    final Unit freezing = freezingMap[Rankine()]!;
    expect(freezing.name, 'Rankine');
    expect(freezing.symbol, '°Ra');
    expect(freezing.toString(), '491.67 °Ra');

    for (final Unit t in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: t),
        freezingMap[t],
      );
    }

    final Unit boiling = boilingMap[Rankine()]!;
    expect(boiling.toString(), '671.67 °Ra');

    for (final Unit t in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: t),
        boilingMap[t],
      );
    }
  });

  test('reaumur', () {
    final Unit freezing = freezingMap[Reaumur()]!;
    expect(freezing.name, 'Réaumur');
    expect(freezing.symbol, '°Ré');
    expect(freezing.toString(), '0 °Ré');

    for (final Unit t in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: t),
        freezingMap[t],
      );
    }

    final Unit boiling = boilingMap[Reaumur()]!;
    expect(boiling.toString(), '80 °Ré');

    for (final Unit t in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: t),
        boilingMap[t],
      );
    }
  });

  test('romer', () {
    final Unit freezing = freezingMap[Romer()]!;
    expect(freezing.name, 'Rømer');
    expect(freezing.symbol, '°Rø');
    expect(freezing.toString(), '7.5 °Rø');

    for (final Unit t in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: t),
        freezingMap[t],
      );
    }

    final Unit boiling = boilingMap[Romer()]!;
    expect(boiling.toString(), '60 °Rø');

    for (final Unit t in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: t),
        boilingMap[t],
      );
    }
  });
}
