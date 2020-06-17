import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[400],
          centerTitle: true,
          title: Text(
            'Que veux-tu savoir?',
            style:TextStyle(
              fontSize: 35,
              fontFamily: "OdibeeSans",
            ),
          ),
        ),
        body: BoulePage(),
      ),
    ),
  );
}
class BoulePage extends StatefulWidget {
  @override
  _BoulePageState createState() => _BoulePageState();
}
class _BoulePageState extends State<BoulePage> {
  int number = 1;
  void changenumber(){
    setState(() {
      number = Random().nextInt(5)+1;  
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          child: Image.asset("images/ball$number.png"),
          onPressed: (){
            changenumber();
          },
        ),
      ),
    );
  }
}
