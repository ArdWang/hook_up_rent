import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/pages/home/index.dart';
import 'package:hook_up_rent/pages/home_detail/home_detail.dart';
import 'package:hook_up_rent/pages/login.dart';
import 'package:hook_up_rent/pages/not_found.dart';


class Routes{

  static String home = '/';
  static String login = '/login';
  static String roomDetail = '/room/:roomId';

  static Handler _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return HomePage();
  });

  static Handler _loginHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return LoginPage();
  });

  static Handler _notFoundHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return NotFoundPage();
  });

  static Handler _roomDetailHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomDetailPage(roomId: params['roomId'][0],);
  });

  static void defineRoutes(Router router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.notFoundHandler = _notFoundHandler;
  }

}