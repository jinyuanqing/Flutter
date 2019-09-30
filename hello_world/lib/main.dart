import 'package:flutter_web/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: '1义县游学电子科技有限公司(www.yxzhw.cn)---提供flutter基础使用教程'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body:



        ListView(

        children:<Widget>[
        Wrap(
       
          //warp自动伸缩布局
            spacing: 8.0, // 主轴(水平)方向间距
            runSpacing: 4.0, // 纵轴（垂直）方向间距
            alignment: WrapAlignment.center, //沿主轴方向居中
            children: <Widget>[
              ListTile(
                title: Text('开发注意事项:'),
                subtitle: Text('H:\flutter\flutter_windows_v1.9.1+hotfix.2-stable\flutter\bin\cache\dart-sdk\bin,和H:\flutter\flutter_windows_v1.9.1+hotfix.2-stable\flutter\bin配成path环境变量.先下载https://flutter.dev/docs/development/tools/sdk/releases#windows的flutter,然后在https://github.com/flutter/flutter_web下载flutter-web包,就可以进行flutterweb页开发了.谷歌正式版77(64位).如果清理垃圾文件后,无法运行要从新pub upgrade,pub get'),
              ),
              ListTile(

                title: Text('开发注意事项2:'),

                subtitle: Text('内置图标不显示,要下载MaterialIcons-Regular.woff2,assets下新建一个FontManifest.json内容'),

              ),

              ListTile(

                title: Text('开发注意事项3:'),

                subtitle: Text('如果哪天你的浏览器突然无法打开应用,而之前却是好好地.那么你需要删除项目目录下的.dart_tool文件夹'),

              ),
              Container(
                  width: 500,
                  height: 200,
                  child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: ListView3(), //实例listview.父容器要指定宽高
                  )),

              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('A')),
                label: new Text('Hamilton'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('M')),
                label: new Text('Lafayette'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('H')),
                label: new Text('Mulligan'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('J')),
                label: new Text('Laurens'),
              ),


                  // new Text('Qt中国开发群,Flutter1.9 我爱你!', textDirection: TextDirection.ltr,textAlign: TextAlign.center,style: new TextStyle(fontSize: 30,color: Colors.black87,backgroundColor: Colors.redAccent),)
//                  Row(
                    //可用listtitle代替
                    //行
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    textDirection: TextDirection.ltr, //否则不显示children的子控件
//                    children: <Widget>[
                      //第1列
                      Column(
                        //列内的控件都是竖着排,想横着排可以用row
                        children: <Widget>[
                          //子控件结束后加逗号
                          new Text(
                            'flutter开发必须按照谷歌浏览器正式版!',
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                                fontSize: 80,
                                color: Colors.black87,
                                backgroundColor: Colors.grey[200]),
                          ),
                          new Image.asset('images/1.png', width: 100.0),
                          new RaisedButton(
//raisedbutton必须在materialAPP类中,否则不显示
                            child: new Text(
                              '悬浮按钮',
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 30, color: Colors.black87),
                            ),

                            onPressed: () {},
                          ),

                          RaisedButton.icon(
                            icon: Icon(Icons.send),
                            label: Text("带图标的悬浮按钮"),
                            onPressed: () {},
                          ),
                            Row(
                          //列内的行
                            mainAxisAlignment: MainAxisAlignment.center,//行内控件的居中.MainAxisAlignment（主轴）就是与当前控件方向一致的轴，而CrossAxisAlignment（交叉轴）就是与当前控件方向垂直的轴.行的主轴是水平,交叉轴是垂直的.列相反

                          children: <Widget>[OutlineButton(
                            child: Text("离线按钮"),
                            onPressed: () {},
                          ),

                          FlatButton(
                            child: Text("扁平按钮"),
                            onPressed: () {},
                          ),],
                        )
                          
                        ],
                      ),
                      //第2列
                      Wrap(
                        
                            //warp自动伸缩布局
            spacing: 8.0, // 主轴(水平)方向间距
            runSpacing: 4.0, // 纵轴（垂直）方向间距
            alignment: WrapAlignment.center, //沿主轴方向居中
                        children: <Widget>[
                          //子控件结束后加逗号
                          new Text(
                            'Qt中国开发群,Flutter1.9 我爱你!',
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                                fontSize: 30,
                                color: Colors.black87,
                                backgroundColor: Colors.grey[200]),
                          ),
                          new Image.asset('images/1.png', width: 100.0),
                          new RaisedButton(
                          //raisedbutton必须在materialAPP类中,否则不显示
                            child: new Text(
                              '悬浮按钮',
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 30, color: Colors.black87),
                            ),

                            onPressed: () {},
                          ),

                          RaisedButton.icon(
                            icon: Icon(Icons.send),
                            label: Text("带图标的悬浮按钮"),
                            onPressed: () {},
                          ),

                          OutlineButton(
                            child: Text("离线按钮"),
                            onPressed: () {},
                          ),

                          FlatButton(
                            child: Text("扁平按钮"),
                            onPressed: () {},
                          ),

                          SwitchAndCheckBoxTestRoute(), //显示切换控件
                        ],
                      ),
                      //第3列
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        //显示输入框
                        children: <Widget>[
                          Text('1234'),
                          Container(
                            // Expanded(//不行
                            width: 300, //必须指定宽度,才能显示textfidld
                            child: TextField(
                              autofocus: true,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  labelText: "用户名",
                                  hintText: "用户名或邮箱",
                                  prefixIcon: Icon(Icons.person)),
                            ),
                          ),
                          Container(
                            width: 300,
                            child: TextField(
                              autofocus: true,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "密码",
                                  hintText: "密码",
                                  prefixIcon: Icon(Icons.lock)),
                            ),
                          ),

                        ],
                      ),

                      //第4列
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        //显示输入框
                        children: <Widget>[
                          // width:500,不加宽带也显示TextField
                          Container(
                            child: Text("离线按钮"),


                          ),
                          Container(
                            child: Text("离线按钮"),

                          ),
                        ],
                      ),
                    ],
                  ),


                // width: 1620,



              //第4行
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                //显示输入框
                children: <Widget>[
                  Container(
                    width:800,//不加宽带也显示TextField
                     height:200,
                    child:
                    Form(
                      // key: _formKey, //设置globalKey，用于后面获取FormState
                      autovalidate: true, //开启自动校验
                      child: Column(
                        children: <Widget>[
                      
                         Expanded
                         (
                           child:
                           Text("zheshiwenben"),
                         ),

                          TextFormField(
                              autofocus: true,
                              // controller: _unameController,
                              decoration: InputDecoration(
                                  labelText: "用户名",
                                  hintText: "用户名或邮箱",
                                  icon: Icon(Icons.person)
                              ),
                              // 校验用户名
                              validator: (v) {
                                return v
                                    .trim()
                                    .length > 0 ? null : "用户名不能为空";
                              }

                          ),
                      
                          TextFormField(
                            // controller: _pwdController,
                              decoration: InputDecoration(
                                  labelText: "密码",
                                  hintText: "您的登录密码",
                                  icon: Icon(Icons.lock)
                              ),
                              obscureText: true,
                              //校验密码
                              validator: (v) {
                                return v
                                    .trim()
                                    .length > 5 ? null : "密码不能少于6位";
                              }
                          ),

                        ],
                      ),
                    ),
                  ),


                ],
              ),

            

Row(
  
  children: <Widget>[
 
    Expanded(//设定容器的高度之后,自动扩展的控件才会显示出来.
      child: Container(
        height: 200,//
        decoration: const BoxDecoration(color: Colors.red),
      ),
      flex: 3,
    ),
    Expanded(
      child: Container(
        height: 200,
        decoration: const BoxDecoration(color: Colors.green),
      ),
      flex: 2,
    ),
    Expanded(
      child: Container(
        height: 200,
        decoration: const BoxDecoration(color: Colors.blue),
      ),
      flex: 1,
    ),
    
  ],
   
)


            ]
        )
            

        

        );






  }
}

class FocusTestRoute extends StatefulWidget {
  @override
  _FocusTestRouteState createState() => new _FocusTestRouteState();
}

class _FocusTestRouteState extends State<FocusTestRoute> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            focusNode: focusNode1, //关联focusNode1
            decoration: InputDecoration(labelText: "input1"),
          ),
          TextField(
            focusNode: focusNode2, //关联focusNode2
            decoration: InputDecoration(labelText: "input2"),
          ),
          Builder(
            builder: (ctx) {
              return Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("移动焦点"),
                    onPressed: () {
                      //将焦点从第一个TextField移到第二个TextField
                      // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                      // 这是第二种写法
                      if (null == focusScopeNode) {
                        focusScopeNode = FocusScope.of(context);
                      }
                      focusScopeNode.requestFocus(focusNode2);
                    },
                  ),
                  RaisedButton(
                    child: Text("隐藏键盘"),
                    onPressed: () {
                      // 当所有编辑框都失去焦点时键盘就会收起
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

//3.6 单选开关和复选框  开始

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  _SwitchAndCheckBoxTestRouteState createState() =>
      new _SwitchAndCheckBoxTestRouteState();
}

class _SwitchAndCheckBoxTestRouteState
    extends State<SwitchAndCheckBoxTestRoute> {
  bool _switchSelected = true; //维护单选开关状态
  bool _checkboxSelected = true; //维护复选框状态
  String zhuang_tai = "switch状态";

  String zhuang_tai1 = "checkbox状态";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.ltr, //否则不显示children的子控件
            children: <Widget>[
              Switch(
                value: _switchSelected, //当前状态
                onChanged: (value) {
                  //重新构建页面
                  setState(() {
                    _switchSelected = value;
                    if (value)
                      zhuang_tai = "开";
                    else
                      zhuang_tai = "关";
                  });
                },
              ),
              Text(zhuang_tai),
            ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.ltr, //否则不显示children的子控件
          children: <Widget>[
            Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.red, //选中时的颜色
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;

                  if (value) //状态改变时修改text的显示值
                    zhuang_tai1 = "开";
                  else
                    zhuang_tai1 = "关";
                });
              },
            ),
            Text(zhuang_tai1),
          ],
        ),
      ],
    );
  }
}

//3.6 单选开关和复选框  结束

//无限加载的listview 开始
class ListView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    Widget divider2 = Divider(color: Colors.green);
    return ListView.separated(
      itemCount: 100,
      //列表项构造器
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      },
      //分割器构造器
      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0 ? divider1 : divider2;
      },
    );
  }
}
//无限加载的listview 结束

//输入框  开始
class TextFieldPage extends StatelessWidget {
  Widget buildTextField(TextEditingController controller) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        icon: Icon(Icons.text_fields),
        labelText: '请输入你的姓名)',
        helperText: '请输入你的真实姓名',
      ),
      autofocus: false,
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    controller.addListener(() {
      print('input ${controller.text}');
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: buildTextField(controller),
      ),
    );
  }
}
//输入框  结束


