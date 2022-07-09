import 'package:ericotutorialhandoyopart2/pages/16_multipage_screen_navigation/main_page.dart';
import 'package:flutter/material.dart';

class SecondPageTutorial extends StatelessWidget {
  const SecondPageTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page "),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop((context));
          },
          child: Text("Back"),
        ),
      ),
    );
  }
}
