part of '../dart_unitz.dart';

/// An extension to provide operators on Units.
extension UnitExtension on Unit {
  /// Adds two units together.
  Unit operator +(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value + b);
  }

  /// Subtracts two units.
  Unit operator -(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value - b);
  }

  /// Multiplies two units together.
  Unit operator *(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value * b);
  }

  /// Divides two units.
  Unit operator /(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value / b);
  }

  /// Integer divides two units.
  Unit operator ~/(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value ~/ b);
  }

  /// Modulo operator for two units.
  Unit operator %(Unit other) {
    final num b = fromBase(other.toBase());
    return newInstance(value % b);
  }

  /// Less than operator for two units.
  bool operator <(Unit other) {
    final num a = base.newInstance(toBase()).scalar;
    final num b = other.base.newInstance(other.toBase()).scalar;
    return a < b;
  }

  /// Less than or equal to operator for two units.
  bool operator <=(Unit other) {
    final num a = base.newInstance(toBase()).scalar;
    final num b = other.base.newInstance(other.toBase()).scalar;
    return a <= b;
  }

  /// Greater than operator for two units.
  bool operator >(Unit other) {
    final num a = base.newInstance(toBase()).scalar;
    final num b = other.base.newInstance(other.toBase()).scalar;
    return a > b;
  }

  /// Greater than or equal to operator for two units.
  bool operator >=(Unit other) {
    final num a = base.newInstance(toBase()).scalar;
    final num b = other.base.newInstance(other.toBase()).scalar;
    return a >= b;
  }
}

extension UnitListExtension on List<Unit> {
  /// Returns the names of all units in the list.
  List<String> get names {
    return map((Unit unit) => unit.name).toList();
  }
}
