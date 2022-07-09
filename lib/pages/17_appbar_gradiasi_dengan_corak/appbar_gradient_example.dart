import 'package:flutter/material.dart';

class AppbarGradientTutorial extends StatelessWidget {
  const AppbarGradientTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.adb,
          color: Colors.white,
        ),
        title: Text(
          "Appbar Example Gradient",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app),
          ),
        ],
        // Flexible Space untuk memberikan corak gradient di appbar
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff0096ff),
                Color(0xff6610f2),
              ],
              // Begin & End untuk memberi warna apa dulu yang gradientnya di awal dan akhir
              // FractionalOffset.topLeft warnanya dimulai dari kiri atas
              begin: FractionalOffset.topLeft,
              // FractionalOffset.bottomRight warna berakhirnya dibawah kanan
              end: FractionalOffset.bottomRight,
            ),
            // pattern
            // image: DecorationImage(
            //     image: AssetImage("assets/pattern.png"),
            //     fit: BoxFit.cover,
            //     repeat: ImageRepeat.noRepeat),
          ),
        ),
      ),
    );
  }
}
