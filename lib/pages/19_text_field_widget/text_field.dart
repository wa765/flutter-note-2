import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  //
  // jika ingin ada nilai utama saat pertama buka aplikasi bisa tambahin properti text di parameter textEditingController
  TextEditingController controller = TextEditingController();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Text Field"),
      ),
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Widget TextField membutuhkan controller
            TextField(
              // properti obsecuretext untuk seperti password jika true
              obscureText: true,
              // max length untuk pembatasa pengetikan karakter huruf
              maxLength: 5,
              //
              // maxLines: 1,
              controller: controller,
              // properties onChanged membutuhkan parameter String
              onChanged: (String value) {
                // setState digunakan untuk mengupdate tampilan saat ada perubahan
                setState(() {});
              },
            ),
            Text(controller.text)
          ],
        ),
      ),
    );
  }
}
