import 'package:cloudhub/service/navigation/route_collector.dart';
import 'package:flutter/material.dart';

class RouteGenerator {

  static getRoute({
    required Widget widget,
    required RouteSettings settings,
    bool fullscreenDialog = false,
  })=>MaterialPageRoute<void>(
    builder: (context) => widget,
    settings: settings,
    fullscreenDialog: fullscreenDialog,
  );

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // simpleRoutes中都是注册在路由表中的，不会触发这个方法，specialRoutes中的才会触发这个方法
    assert (RouteCollector.specialRoutes.contains(settings.name));

  }
}