import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/controllers/appController.dart';
import 'package:penka_task/data/colors.dart';
import 'package:penka_task/models/Public.dart';
import 'package:penka_task/data/env.dart';
import 'package:penka_task/widgets/apptext.dart';
import 'package:penka_task/widgets/dialog.dart';
import 'package:penka_task/widgets/loading.dart';

class BotonBanner extends StatelessWidget {
  final AppController app = Get.find(tag: "APP");

  final PublicPenka element;

  BotonBanner({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: element.template.banner ?? Env.FIELD,
      placeholder: (context, url) => getShimmerLoading(),
      imageBuilder: (context, imageProvider) => GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (_) => ReusableDialog(
                    imageUrl: element.template.banner ?? Env.FIELD,
                    square: true,
                    title: element.name,
                    element: element,
                  ));
        },
        child: Hero(
          tag: element.id,
          child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(Get.width * 0.1)),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(1),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextApp(
                    element.name,
                    color: Colors.white,
                    fuente: Fuente.RUBIK_BOLD,
                    size: 23,
                    padding: EdgeInsets.all(30),
                  ),
                  Container(
                    width: 200,
                    height: 35,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: TextApp(
                      'Código: ${element.code}',
                      color: APPColor.text,
                      fuente: Fuente.SEMIBOLD,
                      size: 18,
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(1),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.sports_soccer,
                            )),
                        TextApp(
                          'Fecha:  ${element.dates.start.day}/0${element.dates.start.month} ',
                          color: APPColor.text,
                          fuente: Fuente.SEMIBOLD,
                          size: 18,
                          padding: EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
