import 'package:flutter/material.dart';
import 'package:flutter_app/Account.dart';
import 'package:flutter_app/Main_Page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool hidePassword = true;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 45, 64, 100),
      // appBar: AppBar(backgroundColor: Color.fromRGBO(0, 45, 64, 100)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formkey,
            child: Column(children: [
              SizedBox(height: 50),
              Center(
                  child: Image.asset(
                'assets/polygon.png',
                width: 100,
                height: 100,
              )),
              SizedBox(height: 50),
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Fill in the field';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Your Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Fill in the field';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Password',
                    prefixIcon: IconButton(
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
                            ? Icons.lock
                            : Icons.lock_open)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                keyboardType: TextInputType.text,
                obscureText: hidePassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Fill in the field';
                  }
                  return null;
                },
              ),
              SizedBox(height: 80),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Account(
                                  name: name.text,
                                  email: email.text,
                                  password: password.text)));
                    }
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(245, 79, 70, 30)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainPage()));
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 17, color: Color.fromRGBO(245, 79, 70, 20)),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
