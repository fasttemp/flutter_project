import 'package:flutter/material.dart';
import 'package:flutter_app/Profile.dart';
import 'package:flutter_app/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool hidePassword = true;

  final _formkey = GlobalKey<FormState>();
  String? login = '';

  @override
  void initState() {
    super.initState();
    getFormShared();
  }

  Future getFormShared() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    login = sp.getString('login');

    setState(() {
      login = sp.getString('login');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(height: 20),
            TextFormField(
              controller: loginController,
              decoration: InputDecoration(
                labelText: 'Login',
                hintText: 'Введите логин',
                prefixIcon: Icon(Icons.login),
                suffixIcon: IconButton(
                    onPressed: () {
                      loginController.clear();
                    },
                    icon: Icon(Icons.delete)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(16)),
              ),
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == '') {
                  return 'Заполните Логин';
                }
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Введите пароль',
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (hidePassword == true) {
                          hidePassword = false;
                        } else {
                          hidePassword = true;
                        }
                      });
                    },
                    icon: Icon(hidePassword == true
                        ? Icons.visibility_off
                        : Icons.visibility)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(16)),
              ),
              keyboardType: TextInputType.text,
              obscureText: hidePassword,
              validator: (value) {
                if (value == '') {
                  return 'Заполните пароль';
                }
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                if (_formkey.currentState!.validate()) {
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.setString('login', loginController.text);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile(
                                name: '',
                                familya: '',
                                otchestvo: '',
                                email: '',
                                city: '',
                              )));
                } else {
                  //  Здесь выводится модальное окно
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: SizedBox(
                              height: 150,
                              width: 400,
                              child: Column(
                                children: [
                                  Text('Вы уверены, что хотите выйти?',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.orange)),
                                  SizedBox(height: 80),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Нет',
                                            style:
                                                TextStyle(color: Colors.black)),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.orange),
                                      ),
                                      SizedBox(width: 20),
                                      OutlinedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Profile(
                                                      name: '',
                                                      familya: '',
                                                      otchestvo: '',
                                                      email: '',
                                                      city: '')));
                                        },
                                        child: Text(
                                          'Да',
                                          style:
                                              TextStyle(color: Colors.orange),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(
                                                color: Colors.orange,
                                                width: 2)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                }
              },
              child: Text('Войти', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              },
              child: Text(
                'Если нет аккаунта, то зарегистрируйтесь',
                style: TextStyle(
                    color: Colors.blue, decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}
