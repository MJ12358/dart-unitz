# Dart Unitz

A simple and expandable unit conversion library.

This package is designed to provide a straightforward and versatile solution for performing unit conversions within an application.

With a focus on ease of use, the library offers a user-friendly interface that allows developers to quickly and easily convert between a wide variety of units, including length, weight, temperature, and more (work in progress).

Additionally, the library is designed to be easily expandable, meaning that developers can add new units or custom conversion factors as needed to meet the specific requirements of their application.

## WIP

- [X] Temperature
- [ ] Angle
- [ ] Length
- [ ] Time
- [ ] Mass
- [ ] Electric current
- [ ] Luminous intensity
- [ ] Amount of substance

## Usage

Basic conversion.

```dart
final Unit conversion = Unitz.convert(
  from: Celsius(100),
  to: Fahrenheit,
);

// expect(conversion, Fahrenheit(212));
```

Addition, subtraction, multiplication and division of arbitrary units.

```dart
final Celsius freezingInCelsius = Celsius(0);
final Fahrenheit boilingInFahrenheit = Fahrenheit(212);

final Unit additionResult = freezingInCelsius + boilingInFahrenheit;

// expect(additionResult, Celsius(100));
```

Get a formatted string.

```dart
final String formatted1 = Celsius(100).toString();
final String formatted2 = '$Celsius(100)';

// expect(formatted1, '100 °C');
// expect(formatted2, '100 °C');
```
