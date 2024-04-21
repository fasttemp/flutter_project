import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/Ricki_Morty/ricki_model.dart';
import 'package:http/http.dart' as http;

class RickiScreen extends StatefulWidget {
  const RickiScreen({super.key});

  @override
  State<RickiScreen> createState() => _RickiScreenState();
}

class _RickiScreenState extends State<RickiScreen> {
  List<Results> rickis = [];

  @override
  void initState() {
    super.initState();
    getRickis();
  }

  Future getRickis() async {
    final response = await http
        .get(Uri.parse('https://rickandmortyapi.com/api/character?page=1'));

    if (response.statusCode == 200) {
      RickiModel rickiModel = RickiModel.fromJson(jsonDecode(response.body));

      setState(() {
        rickis = rickiModel.results!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rick and Morty'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: rickis.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Row(
                children: [
                  Image.network(
                    rickis[index].image!,
                    width: 150,
                    height: 150
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          rickis[index].name!,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: rickis[index].status == 'Alive'
                                      ? Colors.green
                                      : rickis[index].status == 'Dead'
                                          ? Colors.red
                                          : Colors.grey),
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              rickis[index].status!,
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Text(
                          rickis[index].location!.name!,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          rickis[index].gender!,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
