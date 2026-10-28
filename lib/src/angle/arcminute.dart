part of '../../dart_unitz.dart';

/// {@template dart_unitz.ArcMinute}
/// A minute of arc, arcminute, arc minute, or minute arc,
/// denoted by the symbol ′, is a unit of angular measurement equal to 1/60 of one degree
///
/// https://en.wikipedia.org/wiki/Minute_and_second_of_arc
/// {@endtemplate}
class ArcMinute extends Angle {
  /// {@macro dart_unitz.ArcMinute}
  ArcMinute([super.value]);

  @override
  String get name => 'Arc Minute';

  @override
  String get pluralName => 'Arc Minutes';

  @override
  String get symbol => "'";

  @override
  /// 60 arcminutes per degree and 180 degrees per pi radians.
  num get scale => 60 * 180;

  @override
  Unit instance([Object? value]) {
    return ArcMinute(value);
  }
}
