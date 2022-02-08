import 'package:fluro/fluro.dart';

///单独抽离出一个FluroRouter，方便后续调用
///该变量在main.dart文件中初始化
///基本的使用方法为：
///Application.router.navigateTo(context,path,transition:transiton)
///其中path即为routes中定义的各个路径，如需传递参数则可参考url的形式：
///  /example?param=1&param=2
/// 这些传递的参数都可以在handler中进行处理
class Application {
  static FluroRouter router;
}
