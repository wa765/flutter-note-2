import 'package:ericotutorialhandoyopart2/pages/25_Hero_ClipRRect_Widget/second_page.dart';
import 'package:flutter/material.dart';

class MainPage25 extends StatelessWidget {
  final String imageLink =
      'https://i.pinimg.com/236x/a1/c4/61/a1c4613a74777fa5cd1294219536eb04.jpg';
  const MainPage25({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Latihan Hero Animation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      // saat mau meng animasikan widget bisa dibungkus dengan Hero Widget
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SecondPage(),
            ),
          );
        },
        // dibungkus agar bisa dipotong , maksudnya ClipRRect itu Rounded Rectangle
        // yang didalam ClipRRect tidak harus gambar tapi bisa diganti dengan widget apapun
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 100,
              width: 100,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(imageLink),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
