part of '../../dart_unitz.dart';

/// {@template dart_unitz.Time}
/// The base unit for [Time] is the [Second].
///
/// https://en.wikipedia.org/wiki/Time
/// {@endtemplate}
abstract class Time extends Unit {
  /// {@macro dart_unitz.Time}
  Time([super.value]);

  @override
  Unit get base => Second();

  @override
  Type get prefixType => DecimalPrefix;

  static final List<Time> values = <Time>[
    Second(),
    Minute(),
    Hour(),
    Day(),
    Week(),
    Month(),
    Year(),
  ];
}
