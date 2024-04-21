
import 'package:flutter/material.dart';
import 'package:flutter_app/Lesson9.dart';

class Lesson8 extends StatefulWidget {
  const Lesson8({Key? key}) : super(key: key);

  @override
  State<Lesson8> createState() => _Lesson8State();
}

class _Lesson8State extends State<Lesson8> {
  List<String> products = ['Хлеб', 'Масло', 'Сок', 'Торт'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Продукты'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.yellow,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/hleb.png',
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          products.first,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text('500тг')
                      ],
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.black, thickness: 10),
              Container(
                color: Colors.pink,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Image.asset('assets/hleb.png',
                          height: 150, width: 150),
                    ),
                    Column(
                      children: [
                        Text(
                          products[1],
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text('500тг')
                      ],
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.black, thickness: 10),
              Container(
                color: Colors.blueGrey,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 10),
                      child: Image.asset('assets/hleb.png',
                          height: 150, width: 150),
                    ),
                    Column(
                      children: [
                        Text(
                          products[2],
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text('500тг')
                      ],
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.black, thickness: 10),
              Container(
                color: Colors.deepPurple,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset('assets/hleb.png',
                          height: 150, width: 150),
                    ),
                    Column(
                      children: [
                        Text(
                          products.last,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text('500тг')
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lesson9()));
                  },
                  child: Text(
                    'Далее',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
