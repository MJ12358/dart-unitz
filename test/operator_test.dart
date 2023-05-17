import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

void main() {
  test('addition', () {
    expect(Fahrenheit(0) + Celsius(100), Fahrenheit(212));
    expect(Celsius(0) + Fahrenheit(212), Celsius(100));
    expect(Fahrenheit(-32) + Celsius(10), Fahrenheit(18));
  });

  test('subtraction', () {
    expect(Fahrenheit(212) - Celsius(0), Fahrenheit(180));
    // 100 minus 0 = 100 ...........................
    expect(Celsius(100) - Fahrenheit(32), Celsius(100));
  });

  test('multiplication', () {
    // not entirely sure the use of this or the accuracy of the result
    expect(Fahrenheit(32) * Celsius(0), Fahrenheit(1024));
    expect(Inch(12) * Foot(1), Inch(144));
  });

  test('division', () {
    expect(Fahrenheit(32) / Celsius(0), Fahrenheit(1));
    expect(Inch(12) / Foot(1), Inch(1));
  });
}
