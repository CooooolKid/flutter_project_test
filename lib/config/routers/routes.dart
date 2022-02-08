import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:project_test/config/routers/route_handlers.dart';

///实现路由的定义

class Routes {
  //想要新定义一个路由只需按照如下写法：
  //static String example="/example"
  static String root = "/"; //根路由都是用/表示
  static String example = "/example"; //路由跳转的例子

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
      handlerFunc: (context, parameters) {
        print("没有找到该路由！");
        return Scaffold(
          body: Text("未找到该路由！"),
        );
      },
    );

    router.define(root, handler: rootHandler); //根路由
    router.define(example, handler: exampleHandler); //路由跳转例子
  }
}
