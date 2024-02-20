import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/controllers/homeController.dart';
import 'package:penka_task/data/colors.dart';
import 'package:penka_task/data/images.dart';
import 'package:penka_task/data/texts.dart';
import 'package:penka_task/widgets/apptext.dart';
import 'package:penka_task/widgets/banner.dart';
import 'package:penka_task/widgets/buttonBanner.dart';
import 'package:penka_task/widgets/loading.dart';
import 'package:penka_task/widgets/nameType.dart';

class CreatePenkas extends StatelessWidget {
  final HomeController home = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: APPColor.mainBackground,
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              const TextApp(
                APPText.play_game,
                padding: EdgeInsets.symmetric(vertical: 20),
                color: APPColor.penka,
                fuente: Fuente.RUBIK_MEDIUM,
                size: 18,
              ),
              Obx(() {
                if (home.isLoadingU) {
                  return getShimmerLoading(); // o tu animación de carga preferida
                } else {
                  if (home.unique.isNotEmpty) {
                    var first = home.unique[0];
                    // home.unique.removeAt(0);
                    return Card(
                      child: Column(
                        children: [
                          ButtonBanner(element: first),
                          ExpansionTile(
                            backgroundColor: APPColor.penka,
                            trailing: SizedBox(),
                            title: NameType(type: 'Unique'),
                            children: home.unique.map((unique) {
                              return ButtonBanner(
                                element: unique,
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return TextApp('No hay datos disponibles');
                  }
                }
              }),
              SizedBox(
                height: 8,
              ),
              Obx(() {
                if (home.isLoadingC) {
                  return getShimmerLoading(); // o tu animación de carga preferida
                } else {
                  if (home.unique.isNotEmpty) {
                    var first = home.combo[0];
                    // home.unique.removeAt(0);
                    return Card(
                      child: Column(
                        children: [
                          ButtonBanner(element: first),
                          ExpansionTile(
                            backgroundColor: APPColor.penka,
                            trailing: SizedBox(),
                            title: NameType(type: 'Combo'),
                            children: home.combo.map((combo) {
                              return ButtonBanner(
                                element: combo,
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return TextApp('No hay datos disponibles');
                  }
                }
              }),
              SizedBox(
                height: 8,
              ),
              Obx(() {
                if (home.isLoadingT) {
                  return getShimmerLoading(); // o tu animación de carga preferida
                } else {
                  if (home.unique.isNotEmpty) {
                    var first = home.tournament[0];
                    // home.unique.removeAt(0);
                    return Card(
                      child: Column(
                        children: [
                          ButtonBanner(element: first),
                          ExpansionTile(
                            backgroundColor: APPColor.penka,
                            trailing: SizedBox(),
                            title: NameType(type: 'Tournament'),
                            children: home.tournament.map((tournament) {
                              return ButtonBanner(
                                element: tournament,
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return TextApp('No hay datos disponibles');
                  }
                }
              }),
            ],
          )),
    );
  }
}
