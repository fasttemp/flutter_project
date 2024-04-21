import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_app/Account.dart';
import 'package:flutter_app/Login.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 45, 64, 100),
      //  appBar: AppBar(backgroundColor: Color.fromRGBO(0, 45, 64, 100)),
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
              child: Image.asset(
            'assets/polygon.png',
            width: 150,
            height: 150,
          )),
          SizedBox(height: 180),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  'SIGN  IN',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(245, 79, 70, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                )),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text('SIGN  UP', style: TextStyle(color: Colors.white)),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(
                      color: Color.fromRGBO(245, 79, 70, 30), width: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
        ],
      ),
    );
  }
}
