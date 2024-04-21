import 'package:flutter/material.dart';

class Lesson6 extends StatefulWidget {
  const Lesson6({super.key});

  @override
  State<Lesson6> createState() => _Lesson6State();
}

class _Lesson6State extends State<Lesson6> {
  String a = "Smart";
  String b = "Castle";
  int c = 25;
  double d = 30.5;
  bool f = true; // Тип Булево принимает только два значения - true and false

  @override
  Widget build(BuildContext context) {
    List<String> fruits =
        []; // Также List принимает аргументы внутри ['apple','banana','orange']
    fruits.add('apple');
    fruits.add('banana');
    fruits.add('orange');

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lesson6',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          SizedBox(height: 20),
          Text(
            fruits.toString(),
            style: TextStyle(fontSize: 20, color: Color(0xff1376c8)),
          ),
        ]),
      ),
    );
  }
}
