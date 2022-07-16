import 'package:flutter/material.dart';

class MainPage26 extends StatelessWidget {
  const MainPage26({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // PreferedSize berguna untuk mengatur lebar dan tinggi si Appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.amber,
          flexibleSpace: Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                'Appbar with Costum Height',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
