import 'package:flutter/material.dart';
import '中间tab.dart'; //引用tabcontroll1
import 'Model1.dart';
import 'package:provider/provider.dart';

//折叠控件
class zuo_ce_cai_dan extends StatefulWidget {
  @override
  _zuo_ce_cai_danState createState() => _zuo_ce_cai_danState();
}

class _zuo_ce_cai_danState extends State<zuo_ce_cai_dan>
    with TickerProviderStateMixin {
  bool _isExpanded = false;
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;
  bool _isExpanded4 = false;
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("左侧菜单刷新了");
    return Container(
      width: 300,
      //alignment: Alignment.topLeft,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //   Text('我们期待您的加入!'),
          // AppBar(
          //   title: Text('操作菜单'),
          //   elevation: 0.0,
          // ),
          // Container(
          //   height: 20.0,

        
          ExpansionPanelList(  //系统设置
            // 点击折叠按钮实现面板的伸缩
            expansionCallback: (int panelIndex, bool isExpanded) {
              setState(() {
                _isExpanded = !isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Container(
                  // alignment: Alignment.center,//加上后文本按钮会在中间，而非铺满空间
                    color: Color(0xfff0f0f0),
                    padding: EdgeInsets.all(0.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _isExpanded = !isExpanded;
                        });
                      },
                      child: Text(
                        '系统设置',
                        //style: Theme.of(context).textTheme.bodyText1,
                        style: new TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                          //  backgroundColor: Colors.grey[200]
                            ),
                      ),
                    ),
                  );
                },
                body: Container( 
                  //alignment: Alignment.center,
                    padding: EdgeInsets.all(6.0),
                    width: double.infinity,
                    child: Column(


                      children: <Widget>[
                        TextButton(
                            onPressed: () {
                              //   print("1");
                              context.read<Model1>().change_caidan(
                                    Row(
                                      //  mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        const Text("网站信息"),
                                        IconButton(
                                          splashRadius: 9, //决定了图标按钮悬浮的阴影面积半径
                                          iconSize: 30,
                                          padding: const EdgeInsets.all(
                                              2.0), //图标按钮的边距
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            color: Colors.amber,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                              tabController1.dispose();

                              tabController1 = TabController(
                                  length: context.read<Model1>().tabs.length,
                                  vsync: this);

                              //   Tab1();
// 2秒后跳转至新的页面
                              Future.delayed(Duration(milliseconds: 200), () {
                                //  print(   tabController1.index);
                                tabController1.index =
                                    context.read<Model1>().tabs.length - 1;
                                //  print(   tabController1.index);//设置默认菜单索引
                              });
                            },
                            child: Text("网站信息")),
                        Consumer(builder: (context, Model1 model1, child) {
                          return TextButton(
                              onPressed: () {
                                model1.change_caidan(
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      const Text("上传设置"),
                                      IconButton(
                                        splashRadius: 9, //决定了图标按钮悬浮的阴影面积半径
                                        iconSize: 30,
                                        padding:
                                            const EdgeInsets.all(2.0), //图标按钮的边距
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.amber,
                                        ),
                                      ),
                                    ],
                                  ),
                                );

                                tabController1.dispose();
                                tabController1 = TabController(
                                    length: context.read<Model1>().tabs.length,
                                    vsync: this);

// 2秒后跳转至新的页面
                                Future.delayed(Duration(milliseconds: 200), () {
                                  tabController1.index =
                                      context.read<Model1>().tabs.length -
                                          1; //设置默认菜单索引
                                });
                              },
                              child: Text("上传设置"));
                        }),
                        TextButton(
                            onPressed: () {
                              context.read<Model1>().change_caidan(
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        const Text("文件存储"),
                                        IconButton(
                                          splashRadius: 9, //决定了图标按钮悬浮的阴影面积半径
                                          iconSize: 30,
                                          padding: const EdgeInsets.all(
                                              2.0), //图标按钮的边距
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            color: Colors.amber,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );

                              tabController1.dispose();
                              tabController1 = TabController(
                                  length: context.read<Model1>().tabs.length,
                                  vsync: this);

// 2秒后跳转至新的页面
                              Future.delayed(Duration(milliseconds: 200), () {
                                tabController1.index =
                                    context.read<Model1>().tabs.length -
                                        1; //设置默认菜单索引
                              });
                            },
                            child: Text("文件存储")),
                      ],
                    )),
                isExpanded: _isExpanded, // 设置面板的状态，true展开，false折叠
              ),
            ],
          ),
          // ),


          ExpansionPanelList(//函授站管理
            // 点击折叠按钮实现面板的伸缩
            expansionCallback: (int panelIndex, bool isExpanded) {
              setState(() {
                _isExpanded1 = !isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Container(
                    color: Color(0xfff0f0f0),
                    padding: EdgeInsets.all(0.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _isExpanded1 = !isExpanded;
                        });
                      },
                      child: Text(
                        '函授站管理',
                        //style: Theme.of(context).textTheme.bodyText1,
                        style: new TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                            backgroundColor: Color.fromARGB(0, 238, 238, 238)),//把透明度改成0，会让按钮背景色变成底层的
                      ),
                    ),
                  );
                },
                body: Container(
                    padding: EdgeInsets.all(6.0),
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        TextButton(onPressed: () {}, child: Text("函授站列表")),
                        TextButton(onPressed: () {}, child: Text("学习情况统计")),
                        // TextButton(onPressed: () {}, child: Text("文件存储")),
                      ],
                    )),
                isExpanded: _isExpanded1, // 设置面板的状态，true展开，false折叠
              ),
            ],
          ),
      ],
      ),
    );
  }
}
