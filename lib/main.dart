import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue[800],
        ),
        body: const BossPage(),
      ),
    ),
  );
}

class BossPage extends StatefulWidget {
  const BossPage({super.key});

  @override
  _BossPageState createState() => _BossPageState();
}

class _BossPageState extends State<BossPage> {
  int change = 1;
  void changeImage() {
    setState(() {
      change = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
            onPressed: () {
              changeImage();
            },
            child: Image.asset('images/ball$change.png'),
          ))
        ],
      ),
    );
  }
}
