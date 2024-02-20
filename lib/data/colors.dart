import 'package:flutter/material.dart';
import 'package:get/get.dart';

class APPColor {
  static const Color mainBackground = Color(0xFFF8F8F8);

  static const MaterialColor text = MaterialColor(
    0xFF393E41,
    <int, Color>{
      50: Color(0xFFB1B1B1),
      100: Color(0xFF808080),
      500: Color(0xFF393E41),
    },
  );

  static const MaterialColor grey = MaterialColor(
    0xFFEAEAEA,
    <int, Color>{
      50: Color.fromRGBO(234, 234, 234, 0.67),
      100: Color(0xFFFAFAFA),
      200: Color(0xFFE2E2E2),
      300: Color(0xFFEAEAEA),
      400: Color(0xFFE5E5E5),
      500: Color(0xFFDADADA),
      600: Color(0xFFD3D3D3),
      700: Color(0xFFF5F5F5),
      800: Color(0xFF393E41),
    },
  );

  static const MaterialColor red = MaterialColor(
    0xFFEC1C2D,
    <int, Color>{
      50: Color.fromRGBO(236, 28, 45, 0.06),
      100: Color.fromRGBO(236, 28, 45, 0.2),
      200: Color(0x66EC1C2D),
      300: Color(0xFFFF0F46),
      500: Color(0xFFEC1C2D),
      800: Color(0xFFEC1C2D),
    },
  );

  static const MaterialColor yellow = MaterialColor(
    0xFFF2A92B,
    <int, Color>{
      200: Color(0xFFFFB51F),
      300: Color(0xFFFEC20C),
    },
  );

  // static ColorScheme scheme = ColorScheme(
  //     primary: green,
  //     // primaryVariant: green,
  //     secondary: green,
  //     // secondaryVariant: grey,
  //     surface: grey,
  //     background: grey,
  //     error: red,
  //     onPrimary: grey,
  //     onSecondary: grey,
  //     onSurface: grey,
  //     onBackground: grey,
  //     onError: red,
  //     brightness: Brightness.light);

  static List<BoxShadow> shadow = <BoxShadow>[
    BoxShadow(
      color: APPColor.grey.shade500,
      blurRadius: 3,
      spreadRadius: 1,
      offset: Offset(0, 2),
    ),
  ];

  static List<BoxShadow> shadowBottom = <BoxShadow>[
    BoxShadow(
      color: APPColor.grey.shade500,
      blurRadius: 2,
      offset: Offset(0, 3),
    ),
  ];

  static List<BoxShadow> shadowInverse = <BoxShadow>[
    BoxShadow(
      color: APPColor.grey.shade500,
      blurRadius: 2,
      offset: Offset(0, -2),
    ),
  ];

  static List<BoxShadow> shadowSmall = <BoxShadow>[
    BoxShadow(
      color: APPColor.grey.shade500,
      blurRadius: 0.2,
      offset: Offset(0, 1),
    ),
  ];

  static const MaterialColor primeBackground = MaterialColor(
    0xFF00342E,
    <int, Color>{
      500: Color(0xFF00342E),
    },
  );

  static const Color penka = Color(0xffFCA42C);
}
