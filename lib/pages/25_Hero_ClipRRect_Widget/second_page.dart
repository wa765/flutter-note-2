import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String imageLink =
      'https://i.pinimg.com/236x/a1/c4/61/a1c4613a74777fa5cd1294219536eb04.jpg';
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Latihan Hero Animation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              height: 200,
              width: 200,
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
