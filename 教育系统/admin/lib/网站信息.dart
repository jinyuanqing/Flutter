import 'package:flutter/material.dart';

class wangzhanxinxi extends StatefulWidget {
  const wangzhanxinxi({Key? key}) : super(key: key);

  @override
  _wangzhanxinxiState createState() => _wangzhanxinxiState();
}

class _wangzhanxinxiState extends State<wangzhanxinxi> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("页1"),
            TextField(),
            Radio(
              // 按钮的值
              value: 01,
              // 改变事件
              onChanged: (value) {
                print("object");
              },
              // 按钮组的值
              groupValue: 1,
            )
          ],
        ));
  }
}
