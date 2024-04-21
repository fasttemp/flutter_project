import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  String name;
  String email;
  String password;
  Account(
      {super.key,
      required this.name,
      required this.email,
      required this.password});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 45, 64, 100),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 45, 64, 100),
        centerTitle: true,
        title: Text(
          'Account',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              widget.name,
              style: TextStyle(
                  fontSize: 30, color: Color.fromRGBO(245, 79, 70, 30)),
            ),
            Text(
              widget.email,
              style: TextStyle(
                  fontSize: 30, color: Color.fromRGBO(245, 79, 70, 30)),
            ),
            Text(
              widget.password,
              style: TextStyle(
                  fontSize: 30, color: Color.fromRGBO(245, 79, 70, 30)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 100),
              child: Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go out', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(245, 79, 70, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
