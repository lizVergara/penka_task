import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/data/fonts.dart';

class TextApp extends StatelessWidget {
  const TextApp(
    this.text, {
    Key? key,
    this.size = 14,
    this.color = Colors.black12,
    this.margin,
    this.fontWeight = FontWeight.normal,
    this.fuente,
    this.padding,
    this.maxLines = 1,
    this.expanded = false,
    this.fullWidth = false,
    this.textAlign,
    this.decoration = TextDecoration.none,
    this.lineHeight = 16,
    this.leadingIcon,
    this.trailingIcon,
    this.boxDecoration,
    this.backgroundColor,
    this.decorationColor,
    this.horizontalAlign = MainAxisAlignment.start,
    this.verticalAlign = CrossAxisAlignment.center,
    this.leadingIconPadding = 5,
    this.trailingIconPadding = 5,
    this.onTap,
  })  : assert(
          fuente != 0 || fuente != 1 || fuente != 2 || fuente != 3,
          'Tipo de Fuente no valido',
        ),
        super(key: key);
  final int? fuente;
  final int maxLines;
  final bool expanded;
  final bool fullWidth;
  final double size;
  final double lineHeight;
  final double leadingIconPadding;
  final double trailingIconPadding;
  final Color? color;
  final Color? backgroundColor;
  final Color? decorationColor;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final String text;
  final TextAlign? textAlign;
  final FontWeight fontWeight;
  final BoxDecoration? boxDecoration;
  final TextDecoration decoration;
  final MainAxisAlignment horizontalAlign;
  final CrossAxisAlignment verticalAlign;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return expanded
        ? Expanded(child: _container())
        : fullWidth
            ? Row(
                mainAxisAlignment: horizontalAlign,
                crossAxisAlignment: verticalAlign,
                children: [
                  if (leadingIcon != null)
                    Padding(
                      padding: EdgeInsets.only(right: leadingIconPadding),
                      child: leadingIcon,
                    ),
                  Flexible(child: _container()),
                  if (trailingIcon != null)
                    Padding(
                      padding: EdgeInsets.only(left: trailingIconPadding),
                      child: trailingIcon,
                    ),
                ],
              )
            : _container();
  }

  Widget _container() => GestureDetector(
        onTap: onTap,
        child: Container(
          color: backgroundColor,
          margin: margin,
          padding: padding,
          decoration: boxDecoration,
          child: Text(
            text,
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            textAlign: textAlign,
            style: TextStyle(
              color: color,
              height: (lineHeight / size),
              fontSize: size * scaleSmallDevice(),
              fontWeight: fontWeight,
              decoration: decoration,
              fontFamily: fuente != null ? Fuente.get(fuente!) : null,
              decorationColor: decorationColor,
            ),
          ),
        ),
      );
}

double scaleSmallDevice() {
  double scale = 1.0; // For normal devices.
  try {
    final height = Get.height;
    // For tiny devices.
    if (height < 600) {
      scale = 0.8;
    }
  } catch (e) {
    // Nada
  }
  return scale;
}

class Fuente {
  static const REGULAR = 0;
  static const DISPLAY = 1;
  static const SEMIBOLD = 2;
  static const MEDIUM = 3;
  static const RUBIK_MEDIUM = 4;
  static const RUBIK = 5;
  static const RUBIK_BOLD = 6;
  static const RUBIK_ITALIC_LIGHT = 7;

  static String get(int tipo) {
    switch (tipo) {
      case Fuente.REGULAR:
        return APPFonts.sfProRegular;
      case Fuente.DISPLAY:
        return APPFonts.sfProDisplay;
      case Fuente.SEMIBOLD:
        return APPFonts.sfProSemibold;
      case Fuente.MEDIUM:
        return APPFonts.sfProMedium;
      case Fuente.RUBIK_MEDIUM:
        return APPFonts.rubikMedium;
      case Fuente.RUBIK:
        return APPFonts.rubik;
      case Fuente.RUBIK_BOLD:
        return APPFonts.rubikBold;
      case Fuente.RUBIK_ITALIC_LIGHT:
        return APPFonts.rubikLightItalic;
      default:
        return APPFonts.sfProMedium;
    }
  }
}
