import 'package:flutter/material.dart';
import 'package:flutter_app/Profile.dart';
import 'package:intl/intl.dart';
import 'package:flutter_app/Admin.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name = TextEditingController();
  TextEditingController familya = TextEditingController();
  TextEditingController otchestvo = TextEditingController();
  TextEditingController email = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  List<String> cities = ['Шымкент', 'Алматы', 'Астана', 'Кокшетау', 'Актау'];
  String selectedCity = 'Шымкент';

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Регистрация'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      labelText: 'Имя', hintText: 'Напишите имя'),
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Имя не заполнено';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: familya,
                  decoration: InputDecoration(
                      labelText: 'Фамилия', hintText: 'Напишите фамилию'),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Имя не заполнено';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: otchestvo,
                  decoration: InputDecoration(
                      labelText: 'Отчество', hintText: 'Напишите отчество'),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Имя не заполнено';
                    }
                    return null;
                  },
                ),
                InkWell(
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2030));

                    if (pickedDate != null) {
                      setState(() {
                        selectedDate = pickedDate;
                      });
                    }
                  },
                  child: Container(
                    height: 40,
                    color: Colors.orange,
                    child: Center(
                        child: Text(
                            DateFormat('dd.MM.yyyy').format(selectedDate))),
                  ),
                ),
                DropdownButtonFormField(
                    items: cities
                        .map((city) =>
                            DropdownMenuItem(value: city, child: Text(city)))
                        .toList(),
                    value: selectedCity,
                    onChanged: (newCity) {
                      selectedCity = newCity!;
                    }),
                SizedBox(height: 20),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      labelText: 'e-mail', hintText: 'Напишите почту'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Имя не заполнено';
                    }
                    return null;
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Номер телефона',
                      hintText: 'Напишите номер телефона'),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Profile(
                                    name: name.text,
                                    familya: familya.text,
                                    otchestvo: otchestvo.text,
                                    email: email.text,
                                    city: selectedCity,
                                  )));
                    }
                  },
                  child: Text(
                    'Зарегистрироваться',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                )
              ],
            ),
          ),
        ));
  }
}
