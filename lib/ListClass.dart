import 'package:flutter/material.dart';
import 'package:flutter_app/Movie.dart';
import 'package:flutter_app/Movie_Details.dart';

class ListClass extends StatefulWidget {
  const ListClass({Key? key}) : super(key: key);

  @override
  State<ListClass> createState() => _ListClassState();
}

class _ListClassState extends State<ListClass> {
  List<Movie> films = [
    Movie(
        'Шрек',
        'https://masterpiecer-images.s3.yandex.net/5fcce07a5313891:upscaled',
        'Жанр: Комедия',
        'Год выпуска: 2010'),
    Movie(
        'Мадагаскар',
        'https://upload.wikimedia.org/wikipedia/ru/2/28/Madagascar_film.jpg',
        'Жанр: Комедия',
        'Год выпуска: 2012'),
    Movie(
        'Гарри Поттер',
        'https://espanglish.info/sites/default/files/2020-07/harry-potter-20.jpg',
        'Жанр: Фэнтези',
        'Год выпуска: 2005'),
    Movie(
        'Один дома',
        'https://radiokp.ru/sites/default/files/styles/max_width_1200px/public/2019-12/screenshot_10.jpg?itok=noekU-mI',
        'Жанр: Комедия',
        'Год выпуска: 1990')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Список фильмов'),
          backgroundColor: Colors.yellow,
          centerTitle: true,
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: films.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MovieDetails(
                              name: films[index].name,
                              image: films[index].image,
                              genre: films[index].genre,
                              year: films[index].year)));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Container(
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Image.network(
                          films[index].image,
                          width: 150,
                          height: 150,
                        ),
                        Column(
                          children: [
                            Text(
                              films[index].name,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Text(
                              films[index].genre,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            Text(
                              films[index].year,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
