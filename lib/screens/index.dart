import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/data/colors.dart';
import 'package:shimmer/shimmer.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: APPColor.green,
        child: Stack(
          children: [
            SizedBox.expand(
              child: Shimmer.fromColors(
                  baseColor: APPColor.green.shade800,
                  highlightColor: Colors.black.withOpacity(0.7),
                  child: Center()),
            ),
            Center(
                // child: ScaleTransition(
                //   scale: controller.animation,
                //   child: Image.asset(
                //     APPImage.logoLetras,
                //     width: Get.width / 2,
                //     height: Get.width / 2,
                //   ),
                // ),
                ),
          ],
        ),
      );
}
