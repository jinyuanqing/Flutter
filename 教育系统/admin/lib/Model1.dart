import 'package:flutter/material.dart';
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:flutter/foundation.dart';
import '中间tab.dart';
import '网站信息.dart';

//provider会改变数据但不会改变ui界面
//ChangeNotifier
class Model1 with ChangeNotifier, DiagnosticableTreeMixin {
  List<Widget> tabs = [
    //菜单
    Row(
      children: <Widget>[
        Text("首页"),
        IconButton(
          splashRadius: 9, //决定了图标按钮悬浮的阴影面积半径
          iconSize: 30,
          padding: const EdgeInsets.only(right: 0.0),
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.amber,
          ),
        )
        // ),
      ],
    ),
    Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const Text("首页2"),
     IconButton(
                splashRadius: 9, //决定了图标按钮悬浮的阴影面积半径
                iconSize: 30,
                padding: const EdgeInsets.all(2.0), //图标按钮的边距
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.amber,
                ),
              ),

      ],
    ), //
  ];
  int a1 = 0;
  int get a2 => a1;
  List<Widget> tab_page = [
    TextField(),
    TextField(),
  ]; //对于菜单的页面

  void change_caidan(Widget value) {
    // if (!tabs.contains(value)) //包含value则返回真,不包含的情况下添加
    {
      tabs.add(value);
      print(tabs);
      this.a1 = this.a1 + 1;
      tab_page.add(Text("页${a1}"));
      notifyListeners();
    }
    //print(a1);//
  }

  List get_caidan() {
    // tabs.add(value);
    //  notifyListeners();
    return tabs;
  }

  void change_caidan_page(Widget value) {
    tab_page.add(value);
    notifyListeners();
  }
}
