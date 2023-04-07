// ignore_for_file: prefer_asserts_with_message

import 'package:dart_unitz/dart_unitz.dart';

void main() {
  final Unit conversion = Unitz.convert(
    from: Celsius(100),
    to: Fahrenheit(),
  );

  assert(conversion == Fahrenheit(212));

  final Celsius freezingInCelsius = Celsius(0);
  final Fahrenheit boilingInFahrenheit = Fahrenheit(212);

  final Unit additionResult = freezingInCelsius + boilingInFahrenheit;

  assert(additionResult == Celsius(100));

  final String formatted = Celsius(100).toString();

  assert(formatted == '100 °C');
}
