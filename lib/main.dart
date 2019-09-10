import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import "dart:math";

void main() {
  // debugPaintSizeEnabled=true;
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Dicee',
        ),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  final  list = [1,2,3,4,5];
  final _random = new Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
                width: 200.0,
              ),
              onPressed: (){
                setState(() {
                  leftDiceNumber = list[_random.nextInt(list.length)];
                  rightDiceNumber = list[_random.nextInt(list.length)];
                });
              }, 
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
                width: 200.0,
              ),
              onPressed: (){
                setState(() {
                  leftDiceNumber = list[_random.nextInt(list.length)];
                  rightDiceNumber = list[_random.nextInt(list.length)];
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
