import 'package:flutter/material.dart';

class RegistrWidget extends StatefulWidget {
  RegistrWidget({Key? key}) : super(key: key);

  @override
  State<RegistrWidget> createState() => _RegistrWidgetState();
}

class _RegistrWidgetState extends State<RegistrWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 30),
          Text(
            'VKid',
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          SizedBox(height: 10),
          Text(
            'Введите номер',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 10),
          Text(
            'Ваш номер телефона будет использоваться для входа в аккаунт',
            style: TextStyle(color: Colors.grey.shade500, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.phone,
            style: TextStyle(color: Colors.white, fontSize: 18),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Номер телефона',
              hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 18),
              enabled: true,
              prefixText: "+7 | ",
              prefixStyle: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          SizedBox(height: 50),
          Container(
            alignment: Alignment.bottomCenter,
            // height: double.infinity,
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, minimumSize: Size.fromHeight(40)),
                  onPressed: () {},
                  child: Text(
                    'Продолжить',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
              Text(
                'Нажимаю продолжить вы принимаете',
                style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                textAlign: TextAlign.center,
              ),
              Text(
                'пользовательское соглашение и политику конфидециальности.',
                style: TextStyle(color: Colors.white, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
