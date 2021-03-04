import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int number =  1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Ask Me Anything'),
        ),
        body: Center(
          child: TextButton(
            onPressed: (){
              setState(() {
                number = Random().nextInt(5) + 1;
                print(number);
              });
            },
            child: Image(
              image: AssetImage('images/ball$number.png'),
            ),
          ),
        ),
      ),
    );
  }
}

