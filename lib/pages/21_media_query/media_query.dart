import 'package:flutter/material.dart';

class MediaQueryTutorial extends StatelessWidget {
  const MediaQueryTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Media Query"),
      ),
      body: Column(
        // sepertiga dari layar
        // width: MediaQuery.of(context).size.width / 3,
        // setengah dari layar
        // height: MediaQuery.of(context).size.height / 2,
        // color: Colors.amber,
        //

        children: generatedContainer,
      ),
    );
  }

  List<Widget> get generatedContainer {
    return [
      Container(
        height: 100,
        width: 100,
        color: Colors.amber,
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    ];
  }
}
