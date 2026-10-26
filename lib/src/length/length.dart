part of '../../dart_unitz.dart';

/// {@template dart_unitz.Length}
/// The base unit for [Length] is the [Metre].
///
/// https://en.wikipedia.org/wiki/Length
/// {@endtemplate}
abstract class Length extends Unit {
  /// {@macro dart_unitz.Length}
  Length([super.value]);

  @override
  Unit get base => Metre();

  @override
  Type get prefixType => DecimalPrefix;

  /// A list of all available [Length] units.
  static final List<Length> values = <Length>[
    AstronomicalUnit(),
    Chain(),
    Foot(),
    Furlong(),
    Inch(),
    LightYear(),
    Metre(),
    Mile(),
    Parsec(),
    Yard(),
  ];
}
