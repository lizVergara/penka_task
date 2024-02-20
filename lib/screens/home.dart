import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/controllers/appController.dart';
import 'package:penka_task/data/colors.dart';
import 'package:penka_task/data/texts.dart';
import 'package:penka_task/screens/createPenka.dart';
import 'package:penka_task/screens/publicPenka.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController app = Get.find(tag: "APP");

    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                color: APPColor.penka,
              ),
              child: const Center(
                child: TabBar(
                  tabs: [
                    Tab(text: APPText.create),
                    Tab(text: APPText.public),
                  ],
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelColor: Colors.white,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 30),
                  unselectedLabelColor: Color(0xffDBDBDC),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(children: [CreatePenkas(), PublicPenka()]),
            ),
          ],
        ),
      ),
    );
  }
}
