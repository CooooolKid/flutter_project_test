import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:project_test/page/home/pages/route_page.dart';
import 'package:project_test/page/tab/pages/tabs.dart';

///各个路由的handler的配置
///实现处理各个路由跳转时传递的参数等逻辑

//根路由的handler
var rootHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parameters) =>
      Tabs(),
);

//一个跳转路由的例子
var exampleHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> parameters) =>
      RoutePage(),
);
