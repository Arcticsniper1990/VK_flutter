import 'package:flutter/material.dart';
import 'package:vk_flutter/widgets/auth/auth_widget.dart';
import 'package:vk_flutter/widgets/registr/registr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: RegistrWidget(),
      home: AuthWidget(),
    );
  }
}
