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
      backgroundColor: Colors.black,
      body: Center(
        child: Column(children: [
          SizedBox(height: 40),
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
            style: TextStyle(color: Colors.white, fontSize: 20) , textAlign: TextAlign.center,
          ),
          TextField(),
          SizedBox(height: 350),
          ElevatedButton(style: ElevatedButton.styleFrom(
                primary: Colors.white, minimumSize: Size.fromHeight(40)),
              onPressed: () {}, child: Text('Продолжить',  style: TextStyle(color: Colors.black,),)),
          Text(
            'Нажимаю продолжить вы принимаете',
            style: TextStyle(color: Colors.white, fontSize: 12), textAlign: TextAlign.center,
          ),
          Text(
            'пользовательское соглашение и политику конфидециальности.',
            style: TextStyle(color: Colors.white, fontSize: 12), textAlign: TextAlign.center,
          ),
        ]),
      ),
    );
  }
}
