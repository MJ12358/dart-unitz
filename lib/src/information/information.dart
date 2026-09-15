part of '../../dart_unitz.dart';

/// {@template dart_unitz.Information}
/// The base unit for [Information] is the [Bit].
/// {@endtemplate}
abstract class Information extends Unit {
  /// {@macro dart_unitz.Information}
  Information([super.value]);

  @override
  Unit get base => Bit();

  @override
  Type get prefixType => BinaryPrefix;

  /// A list of all the [Information] units.
  static final List<Information> values = <Information>[
    Bit(),
    Byte(),
  ];
}
