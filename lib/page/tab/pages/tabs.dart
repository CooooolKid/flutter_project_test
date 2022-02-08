import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_test/config/colors.dart';
import 'package:project_test/page/home/pages/home_page.dart';
import 'package:project_test/page/message/pages/message_page.dart';
import 'package:project_test/page/mine/pages/mine_page.dart';
import 'package:project_test/page/tab/providers/tabs_index_provider.dart';
import 'package:provider/provider.dart';

class Tabs extends StatefulWidget {
  @override
  _TabState createState() => _TabState();
}

class _TabState extends State<Tabs> {
  final List<BottomNavigationBarItem> btmItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
    BottomNavigationBarItem(icon: Icon(Icons.message), label: "消息"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "个人中心"),
  ];

  final List<Widget> pages = [HomePage(), MessagePage(), MinePage()];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: Provider.of<TabsIndexProvider>(context, listen: false)
              .currentIndex,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: btmItems,
          onTap: (index) =>
              Provider.of<TabsIndexProvider>(context, listen: false)
                  .changeTabsIndex(index),
        ),

        ///IndexedStack在构建页面时会一次性把children中的页面全部加载
        ///可以避免切换页面时重复执行build
        ///但是会有效率问题
        body: IndexedStack(
          index: Provider.of<TabsIndexProvider>(context).currentIndex,
          children: pages,
        ),
      ),
    );
  }

  /// 退出确认
  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('确定退出程序吗?'),
              actions: <Widget>[
                TextButton(
                  child: Text('暂不'),
                  onPressed: () => Navigator.pop(context, false),
                ),
                TextButton(
                  child: Text('确定'),
                  onPressed: () => Navigator.pop(context, true),
                ),
              ],
            ));
  }
}
