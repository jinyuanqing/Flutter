import 'package:flutter/material.dart';
import 'Model1.dart';
import 'package:provider/provider.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  // Tab1(this. tab11);
  // final TabController tab11;

  @override
  _TabState createState() => _TabState();
}

late TabController tabController1;

class _TabState extends State<Tab1>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {////状态保持1
  TextEditingController? control1 =  TextEditingController();

  @override
  bool get wantKeepAlive => true;//状态保持2
  @override
  void initState() {
 
     super.initState();
    print('tab初始化了');
    // // 创建Controller,需要类后添加 with TickerProviderStateMixin
    //  tabController1 = TabController(
    //     length: context.read<Model1>().tabs.length, vsync:ScrollableState()); //vsync: ScrollableState()
     
       tabController1 = TabController(
        length: context.read<Model1>().tabs.length, vsync:this); //vsync: ScrollableState()
     
  
    // tabController1.index = 0; //设置默认菜单索引
    tabController1.index = context.read<Model1>().tabs.length - 1; //设置默认菜单索引
    tabController1.addListener(() {
      //给控制器增加菜单的切换监听事件
      //print("菜单按下了${tabController1.index}");
      switch (tabController1.index) {
        case 0:
          tabController1.index = 0;
          print(0);
          break;

        case 1:
          print(1);
          tabController1.index = 1;
          break;
        case 2:
          print(2);
          tabController1.index = 2;
          break;
      }
    });
  }

  // @override
  // void didChangeDependencies() {
  //   print("didChangeDependencies");
  // }

  @override
  void dispose() {
    super.dispose();
    // tabController1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //super.build(context);

    // Model1 model=  context.read<Model1>();
    print("选项卡刷新了");
    // tabController1 =
    //     TabController(initialIndex: context.read<Model1>().tabs.length>1? 1:0 ,length: context.read<Model1>().tabs.length, vsync: this);
    // tabController1.index = context.read<Model1>().tabs.length - 1; //设置默认菜单索引
    // // tabController1.animateTo(0);
    // tabController1.animateTo(tabController1.index);
    // print(model.tabs);

    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Consumer<Model1>(builder: (context, model1, child) {
        //   return
        Column(children: <Widget>[
          TabBar(
            // key: Key("2"),
            //生成Tab菜单
            controller: tabController1,
            //  tabs: context.read<Model1>().tabs,//错误的写法,直接赋给list<widget>是不对的

            tabs:
                context.read<Model1>().tabs.map((e) => Tab(child: e)).toList(),
            isScrollable: true,
            labelColor: Colors.white, //选中的颜色
            indicatorColor: Colors.black, //指示器颜色,下划线色
            unselectedLabelColor: Colors.blue, //未选中颜色
            unselectedLabelStyle: new TextStyle(
              //未选中的颜色
              fontSize: 25,
              // color: Colors.white,//与属性一致unselectedLabelColor
              //  backgroundColor: Colors.grey[200]
            ),
            labelStyle: new TextStyle(
              //选中的颜色
              fontSize: 20,
              color: Colors.green, //与属性一致unselectedLabelColor
              backgroundColor: Colors.black,
            ),
            // indicatorSize:TabBarIndicatorSize.tab,
          ),
          Container(
              width: 900,
              height: 500,
              child: TabBarView(
                //  key: Key("1"),
                controller: tabController1,
                children:
     //  [
//  EnglisthPage(),
//         MathPage()

//                ]
//               Column(
//     children: <Widget>[

//  TextField(
//             controller: control1,
//             decoration: InputDecoration(
//                 labelText: '*标题:',
//                 labelStyle: TextStyle(color: Colors.blueGrey)),
//           ),
//       Text('数字:$count'),
//              FloatingActionButton(
//                onPressed: (){

//                    count=count+1;

//                }),
//     ],
//   ) ,Column(
//     children: <Widget>[

//       Text('数字:$count1'),
//              FloatingActionButton(
//                onPressed: (){

//                    count1=count1+1;

//                }),
//     ],
//   ) ]

                    List<Widget>.generate(context.read<Model1>().tabs.length,
                        (int i) {
                  return KeyedSubtree(
                      child: context.read<Model1>().tab_page[i],
                      key: Key('${i}'));
                }),
              ))
        ])
        // }),
      ],
    ));
  }

  // addPostFrameCallback(Null Function(dynamic timeStamp) param0) {}
}

int count = 0;
int count1 = 0;

class ChinesePage extends StatefulWidget {
  List list;
  ChinesePage(this.list);
  @override
  _ChinesePageState createState() => _ChinesePageState();
}

class _ChinesePageState extends State<ChinesePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: widget.list.length,
            itemBuilder: (build, index) {
              return Container(
                  padding: EdgeInsets.only(top: 150),
                  child: Text("${widget.list[index]} ----- $index"));
            }));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class EnglisthPage extends StatefulWidget {
  @override
  _EnglisthPageState createState() => _EnglisthPageState();
}

class _EnglisthPageState extends State<EnglisthPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(itemBuilder: (build, index) {
      return Text("en --- $index");
    }));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
class MathPage extends StatefulWidget {
//  String title;
//  MathPage(this.title);
  @override
  _MathPageState createState() => _MathPageState();
}

class _MathPageState extends State<MathPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(itemBuilder: (build, index) {
      return Text("math --- $index");
    }));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

