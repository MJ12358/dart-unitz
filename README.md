# Dart Unitz

A simple and expandable unit conversion library.

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

```dart
final Unit conversion = Unitz.convert(
  from: Celsius(100),
  to: Fahrenheit(),
);
// expect(convertion, Fahrenheit(212));

final Celsius freezingInCelsius = Celsius(0);
final Fahrenheit boilingInFahrenheit = Fahrenheit(212);

final Unit additionResult = freezingInCelsius + boilingInFahrenheit;
// expect(additionResult, Celsius(100));

final String formatted = Celsius(100).toString();
// expect(formatted, '100 °C');
```
