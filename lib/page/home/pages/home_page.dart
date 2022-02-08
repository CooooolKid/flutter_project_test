import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_test/config/routers/application.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("首页"),
          ElevatedButton(
              onPressed: () => Application.router.navigateTo(
                    context,
                    "example",
                  ),
              child: Text("这是一个按钮")),
        ],
      ),
    );
  }
}
