import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/Info2.dart';
import 'package:flutter_app/Api2.dart';
import 'package:http/http.dart' as http;

class Api2 extends StatefulWidget {
  const Api2({Key? key}) : super(key: key);

  @override
  State<Api2> createState() => _Api2State();
}

class _Api2State extends State<Api2> {
  int userId = 0;
  int id = 0;
  String title = '';
  bool completed = false;

  Future<Info2> getInfo2() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/2'));
    print(response.statusCode);

    if (response.statusCode == 200) {
      Info2 infomodel = Info2.fromJson(jsonDecode(response.body));

      setState(() {
        userId = infomodel.userId!;
        id = infomodel.id!;
        title = infomodel.title!;
        completed = infomodel.completed!;
      });

      return infomodel;
    } else {
      throw 'Ошибка запроса';
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getInfo2();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api2'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(children: [
        Row(
          children: [
            Text(
              'Id пользователя: ',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              userId.toString(),
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Id: ',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              id.toString(),
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Title: ',
              style: TextStyle(fontSize: 24),
            ),
            Flexible(
              child: Text(
                title.toString(),
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Завершен: ',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              completed.toString(),
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ]),
    );
  }
}
