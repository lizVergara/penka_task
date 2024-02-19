import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/data/images.dart';
import 'package:penka_task/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black, width: 1.0)),
            child: const Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 40,
            ),
          ),
          title: const Text(
            // 'Hola, ${user}'
            'Hola, user',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/images/logo_penka'),
              onPressed: () {},
            ),
          ],
          elevation: 5,
          backgroundColor: Colors.white,
        ),
        body: HomeScreen(),
      ),
    );
  }
}
