part of '../../dart_unitz.dart';

/// {@template dart_unitz.Angle}
/// The base unit for [Angle] is the [Radian].
///
/// https://en.wikipedia.org/wiki/Angle
/// {@endtemplate}
abstract class Angle extends LinearUnit {
  /// {@macro dart_unitz.Angle}
  Angle([super.value]);

  @override
  Radian get base => Radian();

  @override
  Type get prefixType => NullPrefix;

  /// A list of all available [Angle] units.
  static final List<Angle> values = <Angle>[
    ArcMinute(),
    ArcSecond(),
    Degree(),
    Gradian(),
    Radian(),
  ];
}
