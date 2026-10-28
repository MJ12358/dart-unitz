part of '../../dart_unitz.dart';

/// {@template dart_unitz.Degree}
/// A degree (in full, a degree of arc, arc degree, or arcdegree),
/// usually denoted by ° (the degree symbol), is a measurement
/// of a plane angle in which one full rotation is 360 degrees
///
/// https://en.wikipedia.org/wiki/Degree_(angle)
/// {@endtemplate}
class Degree extends Angle {
  /// {@macro dart_unitz.Degree}
  Degree([super.value]);

  @override
  String get name => 'Degree';

  @override
  String get pluralName => 'Degrees';

  @override
  String get symbol => '°';

  @override
  num get scale => 180;

  @override
  Degree instance([Object? value]) {
    return Degree(value);
  }
}
