import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: const MagicBall(),
    );
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int imageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextButton(
          child: Image(
            image: AssetImage('images/ball$imageNumber.png'),
          ),
          onPressed: () {
            setState(() {
              imageNumber = Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
