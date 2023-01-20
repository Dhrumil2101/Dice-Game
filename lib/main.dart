import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(

          title: const Center(
              child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ld = 1;
  int ld1 = 1;

  void fun(){
    ld = Random().nextInt(6) + 1;
    ld1 = Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {

    return Center(

      child: Row(
        children: <Widget>[
          Expanded(child: FlatButton(
            onPressed: (){
              setState(() {
                fun();
              });
              print("$ld");
            },
            child: Image(

              image: AssetImage('images/dice$ld.png'),
            ),
          ),
          ),
          Expanded(child: FlatButton(
            onPressed: (){
              setState(() {
              fun();
              });
              print('$ld1');
              },
            child: Image(
      image: AssetImage('images/dice$ld1.png'),
      ),
          ),
          ),
        ],
      ),
    );
  }
}
