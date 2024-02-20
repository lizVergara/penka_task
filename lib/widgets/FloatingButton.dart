import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/controllers/appController.dart';
import 'package:penka_task/data/colors.dart';
import 'package:penka_task/data/images.dart';
import 'package:penka_task/data/texts.dart';
import 'package:penka_task/widgets/apptext.dart';

class FloatingButton extends StatelessWidget {
  final AppController app = Get.find(tag: "APP");

  FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      backgroundColor: APPColor.penka,
      elevation: 10,
      onPressed: () {},
      child: Container(
        child: Stack(children: [
          Obx(() {
            if (app.numberPenka.value != 0) {
              return TextApp(
                app.numberPenka.value.toString(),
                size: 20,
                color: Colors.white,
                fuente: Fuente.RUBIK_BOLD,
              );
            } else {
              return SizedBox();
            }
          }),
          Icon(
            Icons.sports_soccer,
            color: Colors.white,
            size: 70,
          ),
        ]),
      ),
      // IconButton(
      //   icon: Icon(Icons.sports_soccer),
      //   color: Colors.white,
      //   onPressed: () {},
      // ),
    );
  }
}
