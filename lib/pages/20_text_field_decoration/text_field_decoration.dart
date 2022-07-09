import 'package:flutter/material.dart';

class TextFieldWidgetDecoration extends StatefulWidget {
  const TextFieldWidgetDecoration({Key? key}) : super(key: key);

  @override
  State<TextFieldWidgetDecoration> createState() =>
      _TextFieldWidgetDecorationState();
}

class _TextFieldWidgetDecorationState extends State<TextFieldWidgetDecoration> {
  @override
  //
  // jika ingin ada nilai utama saat pertama buka aplikasi bisa tambahin properti text di parameter textEditingController
  TextEditingController controller = TextEditingController();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Text Field Decoration "),
      ),
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Widget TextField membutuhkan controller
            TextField(
              // Decoration
              // decoration: InputDecoration(border: InputBorder.none),
              // decoration: InputDecoration(
              //   border: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              // ),
              // ini diluar text field
              // decoration: InputDecoration(
              //   icon: Icon(Icons.abc_outlined),
              // ),
              // kalo didalam itu prefixIcon
              decoration: InputDecoration(
                  // jika ingin memberi color background input text , properti filled haarus bervalue true
                  fillColor: Colors.blue.withOpacity(0.7),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.password,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  // suffix mirip dengan prefix bedanya jika suflix letaknya di belakang
                  suffix: Container(
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  // properti prefix bisa diisi widget apa saja
                  prefix: Container(
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  // jika memakai properti prefix tidak boleh memakai prefixText
                  // prefixText: "password",
                  prefixStyle: TextStyle(
                    color: Colors.blue,
                  ),
                  // tulisan diatas form
                  label: Text(
                    "Password Kamy",
                  ),
                  labelStyle: TextStyle(color: Colors.red),
                  hintText: "Masukkan Password"),

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
