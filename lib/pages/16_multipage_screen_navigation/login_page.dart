import 'package:flutter/material.dart';

import 'main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // ketika diclick , tampilan login page ini langsung keluar tidak bisa ditampilan login lagi
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MainPageTutorial()));
          },
          child: Text("Login"),
        ),
      ),
    );
  }
}
