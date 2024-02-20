import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/data/colors.dart';
import 'package:penka_task/data/images.dart';
import 'package:penka_task/data/texts.dart';
import 'package:penka_task/widgets/apptext.dart';

class ApplicationToolbar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(Get.width * 0.15);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.white, width: 1.0)),
        child: const Icon(
          Icons.account_circle,
          color: Colors.white,
          size: 40,
        ),
      ),
      title: const TextApp(
        APPText.regards,
        size: 23,
        color: Colors.white,
        lineHeight: 1,
      ),
      actions: <Widget>[
        SizedBox(
          width: Get.width * 0.36,
          child: IconButton(
            icon: Image.asset(APPImage.logo),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
      ],
      backgroundColor: APPColor.penka,
    );
  }
}
