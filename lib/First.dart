import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text('Информация о фильме'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset('assets/Mario.png'),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            SizedBox(height: 200),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
          ]),
        ),
      ),
    );
  }
}
