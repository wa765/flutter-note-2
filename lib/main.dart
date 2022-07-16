import 'package:ericotutorialhandoyopart2/pages/24_positioned_FAB_loginpage/main_page.dart';
import 'package:ericotutorialhandoyopart2/pages/25_Hero_ClipRRect_Widget/main_page_25.dart';
import 'package:flutter/material.dart';

import 'pages/26_appbar_with_costum_height/main_page26.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage26(),
    );
  }
}
