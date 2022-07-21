import 'package:flutter/material.dart';
import 'package:vk_flutter/widgets/registr/registr.dart';

class AuthWidget extends StatefulWidget {
  AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  final _loginTextController = TextEditingController();

  void _registr() {
    Navigator.push(
      context,
      MaterialPageRoute<void>(builder: (context) => RegistrWidget()),
    );
  }

  void _auth() {
    final login = _loginTextController.text;

    if (login == 'admin') {
    } else {
      print('ошибка');
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        // ignore: prefer_const_literals_to_create_immutables
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'VK',
              style: TextStyle(color: Colors.blue, fontSize: 60),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Вход в VK ID',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: _loginTextController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Emaill или телефон',
                hintStyle: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, minimumSize: Size.fromHeight(40)),
                onPressed: _auth,
                child: Text('Войти', style: TextStyle(color: Colors.black))),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, minimumSize: Size.fromHeight(40)),
                onPressed: () {
                  _registr();
                },
                child: Text('Зарегистрироваться',
                    style: TextStyle(color: Colors.white))),
          ]),
        ),
      ),
    );
  }
}
