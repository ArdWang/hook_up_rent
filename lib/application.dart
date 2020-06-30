import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:hook_up_rent/routes.dart';

class Application extends StatelessWidget {

  static Router router;

  Application();

  @override
  Widget build(BuildContext context) {

    router = Router();
    Routes.configureRoutes(router);

    return MaterialApp(
      onGenerateRoute: router.generator,
    );
  }
}