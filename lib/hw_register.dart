import 'package:flutter/material.dart';
import 'package:flutter_app/hw_profile.dart';
import 'package:intl/intl.dart';
// ignore: unused_import
import 'package:intl/number_symbols_data.dart';
import 'package:flutter_app/hw_register.dart';

class HwRegister extends StatefulWidget {
  const HwRegister({Key? key}) : super(key: key);
  @override
  State<HwRegister> createState() => _HwRegisterState();
}

class _HwRegisterState extends State<HwRegister> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController date = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  List<String> cities = [
    'Шымкент',
    'Алматы',
    'Астана',
    'Көкшетау',
    'Ақтау',
    'Қарағанды'
  ];
  String selectedCity = 'Қарағанды';

  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Регистрация',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              controller: name,
              decoration:
                  InputDecoration(labelText: 'Имя', hintText: 'Напишите имя'),
              keyboardType: TextInputType.name,
              validator: (name) {
                if (name!.isEmpty) {
                  return 'Поле не заполнено';
                }
              },
            ),
            TextFormField(
              controller: surname,
              decoration: InputDecoration(
                  labelText: 'Фамилия', hintText: 'Напишите фамилию'),
              keyboardType: TextInputType.name,
              validator: (surname) {
                if (surname!.isEmpty) {
                  return 'Поле не заполнено';
                }
              },
            ),
            TextFormField(
              controller: phone,
              decoration: InputDecoration(
                  labelText: 'Номер', hintText: 'Напишите номер'),
              keyboardType: TextInputType.number,
              validator: (phone) {
                if (phone!.isEmpty) {
                  return 'Поле не заполнено';
                }
              },
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                  labelText: 'E-mail', hintText: 'Напишите почту'),
              keyboardType: TextInputType.emailAddress,
              validator: (email) {
                if (email!.isEmpty) {
                  return 'Поле не заполнено';
                }
              },
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
                    child: Text(DateFormat('dd MMMM yyyy')
                        .format(DateTime.parse(selectedDate.toString())))),
              ),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HwProfile(
                                name: name.text,
                                surname: surname.text,
                                phone: phone.text,
                                email: email.text,
                                city: selectedCity,
                                date: selectedDate.toString())));
                  }
                },
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
