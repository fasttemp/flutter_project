import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/number_symbols_data.dart';

class HwProfile extends StatefulWidget {
  String name;
  String surname;
  String phone;
  String email;
  String city;
  String date;

  HwProfile(
      {super.key,
      required this.name,
      required this.surname,
      required this.phone,
      required this.email,
      required this.city,
      required this.date});

  @override
  State<HwProfile> createState() => _HwProfileState();
}

class _HwProfileState extends State<HwProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff52075e),
      appBar: AppBar(
        title: Text('Профиль', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xff7a168c),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Color(0xff6b107a), width: 1),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/ava.png'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2f0336),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Имя',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Text(widget.name,
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(15),
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff2f0336)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Фамилия',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      Expanded(
                          child: Text(widget.surname,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.all(15),
                width: 370,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2f0336)),
                child: Row(
                  children: [
                    Icon(Icons.phone_android, color: Colors.white),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Телефон',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                        Expanded(
                          child: Text(widget.phone,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(15),
              width: 370,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff2f0336)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('email',
                      style: TextStyle(fontSize: 12, color: Colors.white)),
                  Expanded(
                    child: Text(widget.email,
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.all(15),
                width: 370,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2f0336)),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.white),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Город',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                        Expanded(
                          child: Text(widget.city,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(15),
              width: 370,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff2f0336)),
              child: Row(
                children: [
                  Icon(Icons.calendar_month, color: Colors.white),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Рождения',
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                      Expanded(
                        child: Text(widget.date.trim(),
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Выйти',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
