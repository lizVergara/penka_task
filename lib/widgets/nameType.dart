import 'package:flutter/material.dart';
import 'package:penka_task/data/colors.dart';
import 'package:penka_task/data/images.dart';
import 'package:penka_task/widgets/apptext.dart';

class NameType extends StatelessWidget {
  const NameType({
    super.key,
    required this.type,
  });

  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 13,
        right: 13,
      ),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(APPImage.icon),
            color: APPColor.penka,
            size: 30,
          ),
          TextApp(
            'enka ${type}',
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
            color: APPColor.text,
            size: 18,
            fuente: Fuente.SEMIBOLD,
          ),
        ],
      ),
    );
  }
}
