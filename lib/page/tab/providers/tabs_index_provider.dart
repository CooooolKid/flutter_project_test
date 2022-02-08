//底部导航栏页面索引provider
import 'package:flutter/cupertino.dart';

class TabsIndexProvider with ChangeNotifier {
  int currentIndex = 0; //默认的首页

  changeTabsIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
