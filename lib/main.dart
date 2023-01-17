import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  var number = 1;
  Random random = Random();

  void onclicked() {
    setState(() {
      number = random.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF5DA7DB),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF81C6E8),
          title: const Text('ASK ME ANYTHING!!',
              style: TextStyle(
                color: Color(0xFF444444),
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                fontSize: 23,
              )),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: onclicked,
                child: Image.asset('images/ball$number.png'))
          ],
        ),
      ),
    );
  }
}