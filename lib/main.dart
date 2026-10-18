import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text(
            "تطابق",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          backgroundColor:
              Colors.indigo,
        ),
        body: const ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() =>
      _ImagePageState();
}

class _ImagePageState
    extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  void random() {
    leftImageNumber =
        Random().nextInt(8) + 1;
    rightImageNumber =
        Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber ==
                  rightImageNumber
              ? 'مبروك لقد نجحت '
              : 'حاول مره اخري',

          style: TextStyle(
            fontSize: 40.0,
            color: Colors.white70,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(
            20.0,
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      random();
                    });
                  },
                  child: Image.asset(
                    'images/image-$leftImageNumber.png',
                  ),
                ),
              ),
              const SizedBox(width: 50),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      random();
                    });
                  },
                  child: Image.asset(
                    'images/image-$rightImageNumber.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
