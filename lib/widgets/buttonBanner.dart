import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/controllers/appController.dart';
import 'package:penka_task/data/colors.dart';
import 'package:penka_task/data/images.dart';
import 'package:penka_task/data/texts.dart';
import 'package:penka_task/models/Penka.dart';
import 'package:penka_task/widgets/apptext.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:penka_task/widgets/loading.dart';

class ButtonBanner extends StatelessWidget {
  final AppController app = Get.find(tag: "APP");

  final TemplatePenkas element;
  ButtonBanner({
    super.key,
    required this.element,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: element.banner,
          placeholder: (context, url) => getShimmerLoading(),
          imageBuilder: (context, imageProvider) => GestureDetector(
            onTap: () => app.numberPenka.value = app.numberPenka.value + 1,
            child: Container(
              height: Get.height * 0.18,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(Get.width * 0.02)),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.45), BlendMode.dstATop),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(1),
                    spreadRadius: -1,
                    blurRadius: 12,
                    // offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundImage: NetworkImage(element.competition.flag),
                      )),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextApp(
                        element.name,
                        color: Colors.white,
                        fuente: Fuente.RUBIK_BOLD,
                        size: 21,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          TextApp(
                            element.competition.name,
                            color: Colors.white,
                            fuente: Fuente.SEMIBOLD,
                            size: 18,
                          ),
                          SizedBox(
                            width: Get.width * 0.1,
                          ),
                          element.dates.start == null
                              ? SizedBox()
                              : TextApp(
                                  '${element.dates.start.day}/0${element.dates.start.month} ',
                                  color: Colors.white,
                                  fuente: Fuente.SEMIBOLD,
                                  size: 14,
                                )
                        ],
                      ),
                      SizedBox(
                        height: Get.width * 0.028,
                      ),
                      Row(
                        children: <Widget>[
                          element.nextMatch?.home.name == null
                              ? SizedBox()
                              : TextApp(
                                  '${element.nextMatch!.home.name}   ',
                                  color: Colors.white,
                                  fuente: Fuente.SEMIBOLD,
                                  size: 14,
                                ),
                          element.nextMatch?.visit.name == null
                              ? SizedBox()
                              : TextApp(
                                  'vs   ${element.nextMatch!.visit.name}',
                                  color: Colors.white,
                                  fuente: Fuente.SEMIBOLD,
                                  size: 14,
                                ),
                        ],
                      )
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
