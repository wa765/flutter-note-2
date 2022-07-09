import 'package:flutter/material.dart';

class CardWidgetTutorial extends StatelessWidget {
  const CardWidgetTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            // Card ini hanya bisa diisi satu widget tapi kalo misalnya pengen lebih dari satu widget kita bisa bungkus dengan widget layout seperti row , column
            // Masukkan Parameter disini
            buildCard(Icons.account_box, "Account Box"),
            buildCard(Icons.adb, "Android")
          ],
        ),
      ),
    );
  }

  // Extract Method atau Refactor
  // biar bisa beda" gambar dan textnya kita bisa membuat parameter
  Card buildCard(IconData iconData, String text) {
    return Card(
      // Elevation : Bayangan Box mirip Box Shadow di figma
      elevation: 10,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Colors.green,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
