part of '../dart_unitz.dart';

class UnitException implements Exception {
  UnitException([this.message]);

  final String? message;

  UnitException.invalidNumeric(Object? value)
    : message = 'Invalid numeric value: $value';

  UnitException.invalidString(Object? value)
    : message = 'Invalid string value: $value';

  UnitException.cannotParse(Object? value)
    : message = 'Cannot parse value as a number: $value';

  UnitException.unsupportedType(Object? value)
    : message = 'Unsupported type: ${value.runtimeType}';
}
