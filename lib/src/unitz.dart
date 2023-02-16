part of dart_unitz;

/// The entry point for `Unitz`
///
/// Also holds global configuration settings
abstract class Unitz {
  static int precision = 2;
  static bool removeTrailingZeros = true;

  static final Map<Type, Unit Function()> _registration =
      <Type, Unit Function()>{};

  /// Convert a from one unit to another
  static Unit convert({
    required Unit from,
    required Type to,
  }) {
    if (!_registration.containsKey(to)) {
      throw UnimplementedError(
        'Oops, we need to register this type: $to '
        'Be sure to override the "tearOff" method.',
      );
    }

    final Unit u = _registration[to]!();
    return u.fromBase(from.toBase());
  }
}
