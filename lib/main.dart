import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: const Text("Ask me Anything"),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 30),
        elevation: 3,
        shadowColor: Colors.black,
        centerTitle: true,
      ),
      body: const MagicBallPage(),
    ),
  ));
}

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({super.key});

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int index = 1;

  void getAnswer(){
    setState(() {
      var lastIndex = index;
      while(lastIndex == index){
        index = Random().nextInt(5) + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            onPressed: (){
              getAnswer();
            },
            child: Image.asset('imagens/ball$index.png'),
          ),
        ),
      ),
    );
  }
}
