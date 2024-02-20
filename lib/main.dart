import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/controllers/appController.dart';
import 'package:penka_task/screens/home.dart';
import 'package:penka_task/widgets/FloatingButton.dart';
import 'package:penka_task/widgets/appBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController controller = Get.put(
      AppController(),
      tag: "APP",
      permanent: true,
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ApplicationToolbar(),
        body: HomeScreen(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingButton(),
      ),
    );
  }
}
