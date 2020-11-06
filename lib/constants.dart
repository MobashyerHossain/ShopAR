import 'dart:math';

import 'package:flutter/material.dart';

const kTextColor = Color(0xFF535353);
const kTextLightColor = Colors.black45;

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

const kDefaultPaddin = 20.0;

Color getTileColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)]
      .withOpacity(.3)
      .withAlpha(150);
}

Size getDeviceSize(context) {
  return MediaQuery.of(context).size;
}

Color darken(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  var f = 1 - percent / 100;
  return Color.fromARGB(
    c.alpha,
    (c.red * f).round(),
    (c.green * f).round(),
    (c.blue * f).round(),
  );
}

Color brighten(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  var p = percent / 100;
  return Color.fromARGB(
    c.alpha,
    c.red + ((255 - c.red) * p).round(),
    c.green + ((255 - c.green) * p).round(),
    c.blue + ((255 - c.blue) * p).round(),
  );
}

Color getTextColor(Color color) {
  int d = 0;

// Counting the perceptive luminance - human eye favors green color...
  double luminance =
      (0.299 * color.red + 0.587 * color.green + 0.114 * color.blue) / 255;

  if (luminance > 0.5)
    d = 0; // bright colors - black font
  else
    d = 255; // dark colors - white font

  return Color.fromARGB(color.alpha, d, d, d);
}
