import 'dart:math'; //gray because you havent use it
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({super.key});


  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lefDiceNum=1;
  int rightDiceNum=1;
  void state(){
    setState(() {
      lefDiceNum=Random().nextInt(6)+1;
      rightDiceNum=Random().nextInt(6)+1;
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
               state();
                },
                child: Image.asset('images/dice$lefDiceNum.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  state();

                },
                child: Image.asset('images/dice$rightDiceNum.png')),
          ),
        ],
      ),
    );
  }
}


