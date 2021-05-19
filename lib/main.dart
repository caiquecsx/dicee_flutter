import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightGreen,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    var rng = new Random();

    void updateDice() {
      leftDiceNumber = rng.nextInt(6) + 1;
      rightDiceNumber = rng.nextInt(6) + 1;

      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //   content: Text("Dices has been rolled"),
      //   duration: const Duration(seconds: 1),
      // ));
    }

    return Center(
        child: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  updateDice();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  updateDice();
                });
              },
              child: Image.asset("images/dice$rightDiceNumber.png"),
            ),
          ),
        ),
      ],
    ));
  }
}
