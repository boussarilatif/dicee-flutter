import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDice = 5;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$leftDice.png'),
                width: 200.0,
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice2.png'),
                width: 200.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
