import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: Center(
        child: Text("这是一个新路由"),
      ),
    );
  }
}
