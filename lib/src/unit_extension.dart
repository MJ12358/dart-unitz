part of '../dart_unitz.dart';

/// An extension to provide operators on [Unit]s.
extension UnitExtension on Unit {
  /// Adds two units together.
  Unit operator +(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value + b);
  }

  /// Subtracts two units.
  Unit operator -(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value - b);
  }

  /// Multiplies two units together.
  Unit operator *(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value * b);
  }

  /// Divides two units.
  Unit operator /(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value / b);
  }

  /// Integer divides two units.
  Unit operator ~/(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value ~/ b);
  }

  /// Modulo operator for two units.
  Unit operator %(Unit other) {
    final num b = fromBase(other.toBase());
    return instance(value % b);
  }

  /// Negates the unit.
  Unit operator -() {
    return instance(-value);
  }

  /// Less than operator for two units.
  bool operator <(Unit other) {
    final num a = base.instance(toBase()).scalar;
    final num b = other.base.instance(other.toBase()).scalar;
    return a < b;
  }

  /// Less than or equal to operator for two units.
  bool operator <=(Unit other) {
    final num a = base.instance(toBase()).scalar;
    final num b = other.base.instance(other.toBase()).scalar;
    return a <= b;
  }

  /// Greater than operator for two units.
  bool operator >(Unit other) {
    final num a = base.instance(toBase()).scalar;
    final num b = other.base.instance(other.toBase()).scalar;
    return a > b;
  }

  /// Greater than or equal to operator for two units.
  bool operator >=(Unit other) {
    final num a = base.instance(toBase()).scalar;
    final num b = other.base.instance(other.toBase()).scalar;
    return a >= b;
  }
}

/// An extension to provide additional functionality on [List<Unit>].
extension UnitListExtension on List<Unit> {
  /// Returns the names of all units in the list.
  List<String> get names {
    return map((Unit unit) => unit.name).toList();
  }
}

/// An extension to provide additional functionality on [List<UnitPrefix>].
extension UnitPrefixListExtension on List<UnitPrefix> {
  /// Returns the names of all unit prefixes in the list.
  List<String> get names {
    return map((UnitPrefix prefix) => prefix.name).toList();
  }
}
