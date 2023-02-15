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
  test('addition', () {
    for (final Unit u in boilingMap.keys) {
      expect(Celsius(0) + boilingMap[u]!, Celsius(100));
    }

    for (final Unit u in boilingMap.keys) {
      expect(Delisle(150) + boilingMap[u]!, Delisle(150));
    }

    for (final Unit u in boilingMap.keys) {
      expect(Fahrenheit(32) + boilingMap[u]!, Fahrenheit(244));
    }

    for (final Unit u in boilingMap.keys) {
      expect(Kelvin(273.15) + boilingMap[u]!, Kelvin(646.3));
    }

    for (final Unit u in boilingMap.keys) {
      expect(Rankine(491.67) + boilingMap[u]!, Rankine(1163.34));
    }

    for (final Unit u in boilingMap.keys) {
      expect(Reaumur(0) + boilingMap[u]!, Reaumur(80));
    }

    for (final Unit u in boilingMap.keys) {
      expect(Romer(7.5) + boilingMap[u]!, Romer(67.5));
    }
  });

  test('celsius', () {
    final Unit freezing = freezingMap[Celsius()]!;
    expect(freezing.name, 'Celsius');
    expect(freezing.symbol, '°C');
    expect(freezing.toString(), '0 °C');

    for (final Unit u in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: u),
        freezingMap[u],
      );
    }

    final Unit boiling = boilingMap[Celsius()]!;
    expect(boiling.toString(), '100 °C');

    for (final Unit u in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: u),
        boilingMap[u],
      );
    }
  });

  test('delisle', () {
    final Unit freezing = freezingMap[Delisle()]!;
    expect(freezing.name, 'Delisle');
    expect(freezing.symbol, '°D');
    expect(freezing.toString(), '150 °D');

    for (final Unit u in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: u),
        freezingMap[u],
      );
    }

    final Unit boiling = boilingMap[Delisle()]!;
    expect(boiling.toString(), '0 °D');

    for (final Unit u in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: u),
        boilingMap[u],
      );
    }
  });

  test('fahrenheit', () {
    final Unit freezing = freezingMap[Fahrenheit()]!;
    expect(freezing.name, 'Fahrenheit');
    expect(freezing.symbol, '°F');
    expect(freezing.toString(), '32 °F');

    for (final Unit u in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: u),
        freezingMap[u],
      );
    }

    final Unit boiling = boilingMap[Fahrenheit()]!;
    expect(boiling.toString(), '212 °F');

    for (final Unit u in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: u),
        boilingMap[u],
      );
    }
  });

  test('kelvin', () {
    final Unit freezing = freezingMap[Kelvin()]!;
    expect(freezing.name, 'Kelvin');
    expect(freezing.symbol, 'K');
    expect(freezing.toString(), '273.15 K');

    for (final Unit u in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: u),
        freezingMap[u],
      );
    }

    final Unit boiling = boilingMap[Kelvin()]!;
    expect(boiling.toString(), '373.15 K');

    for (final Unit u in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: u),
        boilingMap[u],
      );
    }
  });

  test('rankine', () {
    final Unit freezing = freezingMap[Rankine()]!;
    expect(freezing.name, 'Rankine');
    expect(freezing.symbol, '°Ra');
    expect(freezing.toString(), '491.67 °Ra');

    for (final Unit u in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: u),
        freezingMap[u],
      );
    }

    final Unit boiling = boilingMap[Rankine()]!;
    expect(boiling.toString(), '671.67 °Ra');

    for (final Unit u in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: u),
        boilingMap[u],
      );
    }
  });

  test('reaumur', () {
    final Unit freezing = freezingMap[Reaumur()]!;
    expect(freezing.name, 'Réaumur');
    expect(freezing.symbol, '°Ré');
    expect(freezing.toString(), '0 °Ré');

    for (final Unit u in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: u),
        freezingMap[u],
      );
    }

    final Unit boiling = boilingMap[Reaumur()]!;
    expect(boiling.toString(), '80 °Ré');

    for (final Unit u in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: u),
        boilingMap[u],
      );
    }
  });

  test('romer', () {
    final Unit freezing = freezingMap[Romer()]!;
    expect(freezing.name, 'Rømer');
    expect(freezing.symbol, '°Rø');
    expect(freezing.toString(), '7.5 °Rø');

    for (final Unit u in freezingMap.keys) {
      expect(
        Unitz.convert(from: freezing, to: u),
        freezingMap[u],
      );
    }

    final Unit boiling = boilingMap[Romer()]!;
    expect(boiling.toString(), '60 °Rø');

    for (final Unit u in boilingMap.keys) {
      expect(
        Unitz.convert(from: boiling, to: u),
        boilingMap[u],
      );
    }
  });
}
