import 'package:ericotutorialhandoyopart2/pages/16_multipage_screen_navigation/second_page.dart';
import 'package:flutter/material.dart';

class MainPageTutorial extends StatelessWidget {
  const MainPageTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page "),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondPageTutorial()));
            },
            child: Text("Go To Second Page")),
      ),
    );
  }
}
