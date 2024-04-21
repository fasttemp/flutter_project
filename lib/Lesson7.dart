import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';

class Lesson7 extends StatefulWidget {
  const Lesson7({Key? key}) : super(key: key);

  @override
  State<Lesson7> createState() => _Lesson7State();
}

class _Lesson7State extends State<Lesson7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0f0f0f),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        title: Text('Сегодня в кино',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Divider(color: Colors.grey),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.black,
            child: Row(children: [
              Icon(Icons.location_on_outlined, color: Colors.white),
              SizedBox(width: 10),
              Text(
                'Город',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Spacer(),
              Text(
                'Шымкент',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.white, size: 20),
            ]),
          ),
          Divider(color: Colors.grey),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(children: [
              Icon(Icons.calendar_month_sharp, color: Colors.white),
              SizedBox(width: 10),
              Text(
                'Дата',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Spacer(),
              Text(
                '12 декабря,2023',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.white, size: 20),
            ]),
          ),
          Divider(color: Colors.grey),
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
            child: Row(children: [
              Icon(
                Icons.masks_outlined,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text(
                'Жанры',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Spacer(),
              Text(
                'Все жанры',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.white, size: 20),
            ]),
          ),
          Divider(color: Colors.grey),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/Kim.png",
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Мальчик и птица',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text('Kimitachi wa Dou ikiru ka (2023)',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      Text(
                        'аниме, мультфильм, драма',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/Kim.png",
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Мальчик и птица',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text('Kimitachi wa Dou ikiru ka (2023)',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      Text(
                        'аниме, мультфильм, драма',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/Kim.png",
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Мальчик и птица',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text('Kimitachi wa Dou ikiru ka (2023)',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      Text(
                        'аниме, мультфильм, драма',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/Kim.png",
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Мальчик и птица',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text('Kimitachi wa Dou ikiru ka (2023)',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      Text(
                        'аниме, мультфильм, драма',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/Kim.png",
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Мальчик и птица',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text('Kimitachi wa Dou ikiru ka (2023)',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      Text(
                        'аниме, мультфильм, драма',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
