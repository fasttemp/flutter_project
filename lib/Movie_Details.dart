import 'dart:html';
import 'package:flutter/material.dart';

class MovieDetails extends StatefulWidget {
  String name;
  String image;
  String genre;
  String year;

  MovieDetails(
      {super.key,
      required this.name,
      required this.image,
      required this.genre,
      required this.year});

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child:
                Icon(Icons.arrow_circle_left_outlined, color: Colors.yellow)),
        title: Text('О фильме'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Center(
              child: Image.network(
            widget.image,
            height: 400,
          )),
          Text(
            widget.name,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            widget.genre,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(widget.year, style: TextStyle(fontSize: 20))
        ],
      )),
    );
  }
}
