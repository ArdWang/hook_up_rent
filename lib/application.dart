import 'package:flutter/material.dart';
import 'package:hook_up_rent/pages/login.dart';

class Application extends StatelessWidget {
  Application();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}