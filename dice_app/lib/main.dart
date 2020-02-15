import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red.shade300,
      appBar: AppBar(
        title: Text('Dice App'),
        backgroundColor: Colors.red.shade500,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

int leftDice = 2;
int rightDice = 1;



class _State extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(6) + 1;
                      rightDice = Random().nextInt(6)+ 1;

                    });
                  },
                  child: Image.asset('images/dice$leftDice.png'))),
          Expanded(child: FlatButton(
              onPressed: (){

                setState(() {
                  rightDice = Random().nextInt(6)+ 1;
                  leftDice = Random().nextInt(6) + 1;


                });
              },
              child: Image.asset('images/dice$rightDice.png')))
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {
//
//
//
//}
