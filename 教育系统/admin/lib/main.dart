// ignore_for_file: deprecated_member_use

import '中间tab.dart';
import 'Model1.dart';
import 'package:flutter/material.dart';
import '左侧菜单.dart';
import 'package:provider/provider.dart';
 
import '网站信息.dart';

late TabController tabController2; //需要定义一个Controller
const String websitename = "教育系统后台"; //站点名称

void main() {
  runApp(//MyApp()
      MultiProvider(
          providers: [ChangeNotifierProvider(create: (_) => Model1())],
          child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: websitename,
      //去掉右上角的debug贴纸
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: websitename),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;
  @override
  //bool get wantKeepAlive => true;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List tabs = [
    "首页",
    "技术分享",
    "产品展示",
    "人才招聘",
    "公司简介",
    "联系我们",
    "人才招聘",
    "图片",
    "聊天"
  ];

  @override
  void initState() {
    super.initState();
    tabController2 = TabController(length: tabs.length, vsync: this);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // super.build(context);
    print("主页面刷新了");
    Size _size = MediaQuery.of(context).size;
    // Model1 a = Provider.of<Model1>(context);
    // tabController1 = TabController(length:context.read<Model1>().tabs.length, vsync: this);
    //    tabController1.index = context.read<Model1>().tabs.length-1; //设置默认菜单索引
    return Scaffold(
      key: _scaffoldKey,
      //drawer: zuo_ce_cai_dan(), //抽屉左侧菜单

      appBar: PreferredSize(
        child: new AppBar(
          //顶部导航
          //标题居中
          leading: _size.width < 1000
              ? new IconButton(
                  icon: new Icon(Icons.settings),
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  })
              : Text(""),

          centerTitle: true,

          title: Text(widget.title),

          //AppBar标题文字后面放置图标

          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person_add),
              label: Text("发布"),
              onPressed: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context) {
                //  return  Fa_bu();
                //}
                //)
                //  );
              },
            ),
            FlatButton.icon(
              icon: Icon(Icons.account_balance),
              label: Text("注册"),
              onPressed: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context) {
                // return Deng_lu();
                //  }));
              },
            ),
            FlatButton.icon(
              icon: Icon(Icons.person_add),
              label: Text("登录"),
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
                print(1);
              },
            ),
          ],

          bottom: TabBar(
            //生成Tab菜单
            controller: tabController2,
            tabs: tabs.map((e) => Tab(text: e)).toList(),
            isScrollable: true,
            labelColor: Colors.white, //选中的颜色
            indicatorColor: Colors.black, //指示器颜色,下划线色
            unselectedLabelColor: Colors.white, //未选中颜色
            unselectedLabelStyle: new TextStyle(
              //未选中的颜色
              fontSize: 25,
              //color: Colors.white,//与属性一致unselectedLabelColor
              //  backgroundColor: Colors.grey[200]
            ),
            labelStyle: new TextStyle(
              //选中的颜色
              fontSize: 30,
              //color: Colors.white,//与属性一致unselectedLabelColor
              backgroundColor: Colors.black,
            ),
            // indicatorSize:TabBarIndicatorSize.tab,
          ),
        ),
        preferredSize: Size.fromHeight(100.0), //设置appbar高度
      ),
      body: Row(
        children: <Widget>[
          // Consumer<Model1>(builder: (context, model1, child) {
          //   return TextButton(
          //       onPressed: () {
          //         tabController1.index = 1;
          //       },
          //       child: Text("0"));
          // }),
          // Consumer(builder: (context, Model1 model1, child) {
          //   print('Text重绘了。。。。。。');
          //   return TextButton(
          //       onPressed: () {
          //         print(a.a1);
          //         print(model1.get_caidan());
          //       },
          //       child: Text("1"));
          // }),
          Expanded(
            flex: 2,//_size.width < 1000 ? 0 : 1,
            child: _size.width < 1000
                ? Container(
                    width: 0,
                    height: 0,
                  )
                : Center(child: zuo_ce_cai_dan()),
          ),
          Expanded(
              flex:6, //_size.width < 1000 ? 6 : 6,
              child: Center(child:
             // Text("data")
         
                Consumer<Model1>(builder: (_, model1, child) {
             return    Tab1();//不能使用自动修复加上const，那样tab1就不会刷新了
            })
              
              )),

          // SizedBox(
          //   height: 40.0,
          //   width: 40.0,
          //   child: IconButton(
          //     //iconSize: 20,
          //     onPressed: () {},
          //     icon: Icon(Icons.add),
          //   ),
          // ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
