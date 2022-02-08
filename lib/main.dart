import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:project_test/page/tab/pages/tabs.dart';
import 'package:project_test/page/tab/providers/tabs_index_provider.dart';
import 'package:provider/provider.dart';

import 'config/routers/application.dart';
import 'config/routers/routes.dart';

void main() {
  runApp(
      //对各个页面所需要的provider进行统一注册
      MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (context) => TabsIndexProvider()), //底部导航栏索引管理
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    //fluro初始化
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;

    return MaterialApp(
      title: 'Project Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tabs(),
    );
  }
}
