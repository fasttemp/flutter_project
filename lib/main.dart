import 'package:flutter/material.dart';
import 'package:flutter_app/Account.dart';
import 'package:flutter_app/First.dart';
import'package:flutter_app/Lesson6.dart';
import'package:flutter_app/Lesson7.dart';
import 'package:flutter_app/Lesson8.dart';
import 'package:flutter_app/Login.dart';
import 'package:flutter_app/shared.dart';
import'package:flutter_app/Admin.dart';
import'package:flutter_app/Register.dart';
import'package:flutter_app/Zametki.dart';
import'package:flutter_app/ListClass.dart';
import'package:flutter_app/News/News_List.dart';
import'package:flutter_app/Catalog/grid_view.dart';
import'package:flutter_app/Weather/weather_screen.dart';
import'package:flutter_app/Ricki_Morty/rick_screen.dart';
import'package:flutter_app/Country/country_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:(CountryScreen()));
  } 
}