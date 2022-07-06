import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/main_bmi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xff111327),
        ),
        scaffoldBackgroundColor: const Color(0xff0A0E20),
      ),
      home: MainBmiPage(),
    );
  }
}
