part of '../../dart_unitz.dart';

/// {@template dart_unitz.Year}
/// The year, standard symbol: a,
/// is a unit of time equal to 31556952 seconds (average year length).
///
/// https://en.wikipedia.org/wiki/Year
/// {@endtemplate}
class Year extends Time {
  /// {@macro dart_unitz.Year}
  Year([super.value]);

  @override
  String get name => 'Year';

  @override
  String get pluralName => 'Years';

  @override
  String get symbol => 'a';

  @override
  num get scale => 31556952;

  @override
  Year instance([Object? value]) {
    return Year(value);
  }
}

/// {@template dart_unitz.CommonYear}
/// The common year, standard symbol: a,
/// is a unit of time equal to 365 days.
/// {@endtemplate}
class CommonYear extends Time {
  /// {@macro dart_unitz.CommonYear}
  CommonYear([super.value]);

  @override
  String get name => Year().name;

  @override
  String get pluralName => Year().pluralName;

  @override
  String get symbol => Year().symbol;

  @override
  num get scale => Day().scale * 365;

  @override
  CommonYear instance([Object? value]) {
    return CommonYear(value);
  }
}

/// {@template dart_unitz.LeapYear}
/// The leap year, standard symbol: a,
/// is a unit of time equal to 366 days.
/// {@endtemplate}
class LeapYear extends Time {
  /// {@macro dart_unitz.LeapYear}
  LeapYear([super.value]);

  @override
  String get name => Year().name;

  @override
  String get pluralName => Year().pluralName;

  @override
  String get symbol => Year().symbol;

  @override
  num get scale => Day().scale * 366;

  @override
  LeapYear instance([Object? value]) {
    return LeapYear(value);
  }
}
