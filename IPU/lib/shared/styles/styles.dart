import 'package:flutter/material.dart';
import 'package:ipu/shared/styles/colors.dart';

ButtonStyle whiteButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.grey,
  primary: Colors.white,
  minimumSize: const Size(65, 36),
  padding: const EdgeInsets.all(16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
);

ButtonStyle blueButtonStyle = ElevatedButton.styleFrom(

  onPrimary: white,
  primary: blue,
  minimumSize: const Size(88, 48),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

ButtonStyle orangeButtonStyle = ElevatedButton.styleFrom(
  onPrimary: orange,
  primary: Colors.transparent,
  minimumSize: const Size(50, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  side: const BorderSide(
    color: orange,
    width: 1.0,
    style: BorderStyle.solid,
  ),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)
    ),
  ),
);

TextStyle titleStyle = const TextStyle(
color: black
);

TextStyle whiteTitleStyle = const TextStyle(
    color: white
);

TextStyle infoStyle = const TextStyle(
    color: white,
  fontSize: 14,
  fontWeight: FontWeight.bold
);

TextStyle subjectStyle = const TextStyle(
  color: black,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

TextStyle requestStyle = const TextStyle(
  color: black,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

TextStyle greyStyle = const TextStyle(
  color: grey,
  fontSize: 14,
  fontWeight: FontWeight.normal,
);
