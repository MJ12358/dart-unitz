part of '../../dart_unitz.dart';

/// {@template dart_unitz.Angle}
/// The base unit for [Angle] is the [Radian].
///
/// https://en.wikipedia.org/wiki/Angle
/// {@endtemplate}
abstract class Angle extends Unit {
  /// {@macro dart_unitz.Angle}
  Angle([super.value]);

  @override
  Unit get base => Radian();

  @override
  Type get prefixType => NullPrefix;

  static final List<Angle> values = <Angle>[
    ArcMinute(),
    ArcSecond(),
    Degree(),
    Gradian(),
    Radian(),
  ];
}
