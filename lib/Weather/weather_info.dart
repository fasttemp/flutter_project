import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/Weather/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherInfo extends StatefulWidget {
  String city;
  WeatherInfo({super.key, required this.city});

  @override
  State<WeatherInfo> createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  double temp = 0.0;
  String state = '';
  String image = '';
  bool loading = false;
  @override
  void initState() {
    super.initState();
    getWeather();
  }

  Future getWeather() async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=${widget.city}&appid=1369dd6b5ae78fc9952261ab9aa236b4&units=metric'));

    if (response.statusCode == 200) {
      WeatherModel weatherModel =
          WeatherModel.fromJson(jsonDecode(response.body));
      setState(() {
        loading = true;
      });
      setState(() {
        temp = weatherModel.main!.temp!;
        state = weatherModel.weather![0].main!;

        if (state == 'Rain') {
          image = 'assets/rain.jpg';
        } else if (state == 'Snow') {
          image = 'assets/snow.jpg';
        } else if (state == 'Clouds') {
          image = 'assets/clouds.jpg';
        } else {
          image = 'assets/clear.jpg';
        }
      });
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Информация о погоде'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.city,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                '$temp°C',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                state,
                style: TextStyle(fontSize: 24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
