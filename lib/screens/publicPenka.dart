import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/controllers/homeController.dart';
import 'package:penka_task/data/colors.dart';
import 'package:penka_task/data/texts.dart';
import 'package:penka_task/widgets/apptext.dart';
import 'package:penka_task/widgets/banner.dart';
import 'package:penka_task/widgets/buttonBanner.dart';
import 'package:penka_task/widgets/loading.dart';
import 'package:penka_task/widgets/nameType.dart';

class PublicPenka extends StatelessWidget {
  final HomeController home = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: APPColor.mainBackground,
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const TextApp(
              APPText.public_game,
              padding: EdgeInsets.symmetric(vertical: 20),
              color: APPColor.penka,
              fuente: Fuente.RUBIK_MEDIUM,
              size: 18,
            ),
            Obx(() {
              if (home.isLoadingP) {
                return getShimmerLoading(); // o tu animación de carga preferida
              } else {
                if (home.public.isNotEmpty) {
                  // var first = home.public[0];
                  // home.unique.removeAt(0);
                  return CarouselSlider(
                    items: home.public.map((public) {
                      return BotonBanner(
                        element: public,
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: Get.height * 0.3,
                      autoPlay: true,
                      // aspectRatio: 18 / 8,
                      disableCenter: true,
                      // onPageChanged: _onSlideChange,
                      viewportFraction: 0.9,
                      autoPlayInterval: Duration(seconds: 4),
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(seconds: 3),
                    ),
                  );
                } else {
                  return TextApp('No hay datos disponibles');
                }
              }
            }),
          ],
        ),
      ),
    );
  }
}
