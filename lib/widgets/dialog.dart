import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/data/colors.dart';
import 'package:penka_task/data/images.dart';
import 'package:penka_task/widgets/apptext.dart';
import 'package:penka_task/widgets/loading.dart';

class ReusableDialog extends StatelessWidget {
  final String? title;
  final String? message;
  double? width;
  double? height;
  final double? insetPaddingHorizontal;
  final double? insetPaddingVertical;
  final String? textButton;
  final Function? onPressButton;
  final Function? close;
  final bool square;
  final bool closeFunction;
  final String imageUrl;
  final dynamic element;
  ReusableDialog(
      {Key? key,
      this.title,
      this.message,
      required this.imageUrl,
      required this.element,
      this.textButton = '',
      this.width,
      this.closeFunction = false,
      this.insetPaddingHorizontal = 20,
      this.insetPaddingVertical = 250,
      this.height,
      this.onPressButton,
      this.close,
      this.square = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthCont = MediaQuery.of(context).size.width;
    final heightCont = MediaQuery.of(context).size.height;
    return AlertDialog(
        contentPadding: const EdgeInsets.all(0),
        insetPadding: EdgeInsets.symmetric(
            vertical: insetPaddingVertical!,
            horizontal: insetPaddingHorizontal!),
        content: Builder(
          builder: (context) {
            return CachedNetworkImage(
              imageUrl: imageUrl,
              placeholder: (context, url) => getShimmerLoading(),
              imageBuilder: (context, imageProvider) => Hero(
                tag: element.id,
                child: Container(
                  width: width ?? widthCont,
                  height: height ?? heightCont,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(Get.width * 0.02)),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            APPImage.logo,
                            height: heightCont * 0.03,
                            alignment: Alignment.topRight,
                            color: APPColor.penka,
                          ),
                          const Spacer(),
                          IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                closeFunction ? close!() : Get.back();
                              },
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints()),
                        ],
                      ),

                      // TextApp(
                      //   title!.isEmpty ? '' : title!,
                      //   size: 19,
                      //   fontWeight: FontWeight.bold,
                      //   padding: const EdgeInsets.only(top: 18),
                      //   margin: const EdgeInsets.only(bottom: 13),
                      // ),
                      Column(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
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
                      ),
                      textButton!.isNotEmpty
                          ? Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber,
                                  elevation: 0,
                                ),
                                onPressed: () => onPressButton!(),
                                child: Text(textButton ?? ''),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        actionsAlignment: MainAxisAlignment.spaceAround,
        elevation: 5,
        alignment: Alignment.center,
        shape: square
            ? const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              )
            : const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))));
  }
}
