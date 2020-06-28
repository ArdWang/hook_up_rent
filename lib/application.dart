import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:hook_up_rent/routes.dart';

class Application extends StatelessWidget {
  Application();

  @override
  Widget build(BuildContext context) {

    Router router = Router();
    Routes.defineRoutes(router);

    return MaterialApp(
      onGenerateRoute: router.generator,
    );
  }
}