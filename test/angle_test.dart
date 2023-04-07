import 'dart:math';

import 'package:dart_unitz/dart_unitz.dart';
import 'package:test/test.dart';

Map<Unit, Unit> circleMap = <Unit, Unit>{
  ArcMinute(): ArcMinute(21600),
  ArcSecond(): ArcSecond(1296000),
  Degree(): Degree(360),
  Gradian(): Gradian(400),
  Radian(): Radian(2 * pi),
};

void main() {
  //! You are setting precision here so adjust tests accordingly
  Unitz.precision = 4;

  test('equality', () {
    expect(Degree(0) == Degree(0), true);
    expect(Degree(0) != Degree(360), true);
    expect(Degree(0) == Radian(0), true);
    expect(Degree(0) != Radian(2 * pi), true);
    expect(Degree(360) == Radian(2 * pi), true);

    expect(Degree(0) < Degree(360), true);
    expect(Degree(360) > Degree(0), true);
    expect(Degree(0) <= Degree(0), true);
    expect(Degree(0) >= Degree(0), true);
    expect(Degree(0) < Radian(2 * pi), true);
    expect(Degree(360) > Radian(0), true);
  });

  test('compare', () {
    expect(Degree(0).compareTo(Degree(0)), 0);
    expect(Degree(0).compareTo(Degree(360)), -1);
    expect(Degree(360).compareTo(Degree(0)), 1);
    expect(Degree(0).compareTo(Radian(0)), 0);
    expect(Degree(0).compareTo(Radian(2 * pi)), -1);
    expect(Degree(360).compareTo(Radian(0)), 1);
  });

  test('addition', () {
    for (final Unit t in circleMap.keys) {
      expect(ArcMinute(0) + circleMap[t]!, circleMap[ArcMinute()]);
    }

    for (final Unit t in circleMap.keys) {
      expect(ArcSecond(0) + circleMap[t]!, circleMap[ArcSecond()]);
    }

    for (final Unit t in circleMap.keys) {
      expect(Degree(0) + circleMap[t]!, circleMap[Degree()]);
    }

    for (final Unit t in circleMap.keys) {
      expect(Gradian(0) + circleMap[t]!, circleMap[Gradian()]);
    }

    for (final Unit t in circleMap.keys) {
      expect(Radian(0) + circleMap[t]!, circleMap[Radian()]);
    }
  });

  test('subtraction', () {
    for (final Unit t in circleMap.keys) {
      expect(circleMap[ArcMinute()]! - circleMap[t]!, ArcMinute(0));
    }

    for (final Unit t in circleMap.keys) {
      expect(circleMap[ArcSecond()]! - circleMap[t]!, ArcSecond(0));
    }

    for (final Unit t in circleMap.keys) {
      expect(circleMap[Degree()]! - circleMap[t]!, Degree(0));
    }

    for (final Unit t in circleMap.keys) {
      expect(circleMap[Gradian()]! - circleMap[t]!, Gradian(0));
    }

    for (final Unit t in circleMap.keys) {
      expect(circleMap[Radian()]! - circleMap[t]!, Radian(0));
    }
  });

  test('arcminute', () {
    final Unit arcminute = circleMap[ArcMinute()]!;
    expect(arcminute.name, 'Arc Minute');
    expect(arcminute.symbol, "'");
    expect(arcminute.toString(), "21600 '");

    for (final Unit t in circleMap.keys) {
      expect(
        Unitz.convert(from: arcminute, to: t),
        circleMap[t],
      );
    }
  });

  test('arcsecond', () {
    final Unit arcsecond = circleMap[ArcSecond()]!;
    expect(arcsecond.name, 'Arc Second');
    expect(arcsecond.symbol, '"');
    expect(arcsecond.toString(), '1296000 "');

    for (final Unit t in circleMap.keys) {
      expect(
        Unitz.convert(from: arcsecond, to: t),
        circleMap[t],
      );
    }
  });

  test('degree', () {
    final Unit degree = circleMap[Degree()]!;
    expect(degree.name, 'Degree');
    expect(degree.symbol, '°');
    expect(degree.toString(), '360 °');

    for (final Unit t in circleMap.keys) {
      expect(
        Unitz.convert(from: degree, to: t),
        circleMap[t],
      );
    }
  });

  test('gradian', () {
    final Unit gradian = circleMap[Gradian()]!;
    expect(gradian.name, 'Gradian');
    expect(gradian.symbol, 'grad');
    expect(gradian.toString(), '400 grad');

    for (final Unit t in circleMap.keys) {
      expect(
        Unitz.convert(from: gradian, to: t),
        circleMap[t],
      );
    }
  });

  test('radian', () {
    final Unit radian = circleMap[Radian()]!;
    expect(radian.name, 'Radian');
    expect(radian.symbol, 'rad');
    expect(radian.toString(), '6.2832 rad');

    for (final Unit t in circleMap.keys) {
      expect(
        Unitz.convert(from: radian, to: t),
        circleMap[t],
      );
    }
  });
}
