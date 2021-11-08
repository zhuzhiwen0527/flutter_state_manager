import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart'hide Page;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:flutter/rendering.dart';
import 'package:flutter_share/animal.dart';
import 'package:flutter_share/bloc_counter/bloc_counter_view.dart';
import 'package:flutter_share/counter/counter.dart';
import 'package:flutter_share/fr_counter/fr_counter_page.dart';
import 'package:flutter_share/get_x_counter/get_x_counter_view.dart';
import 'package:flutter_share/get_x_easy_counter/get_x_easy_counter_view.dart';
import 'package:flutter_share/provider_counter/provider_counter_view.dart';



import 'package:flutter_ume/flutter_ume.dart'; // UME 框架
import 'package:flutter_ume_kit_ui/flutter_ume_kit_ui.dart'; // UI 插件包
import 'package:flutter_ume_kit_perf/flutter_ume_kit_perf.dart'; // 性能插件包
import 'package:flutter_ume_kit_show_code/flutter_ume_kit_show_code.dart'; // 代码查看插件包
import 'package:flutter_ume_kit_device/flutter_ume_kit_device.dart'; // 设备信息插件包
import 'package:flutter_ume_kit_console/flutter_ume_kit_console.dart';


void main() {

  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;

  if (kDebugMode) {
    PluginManager.instance                                 // 注册插件
      ..register(WidgetInfoInspector())
      ..register(WidgetDetailInspector())
      ..register(ColorSucker())
      ..register(AlignRuler())
      ..register(Performance())
      ..register(ShowCode())
      ..register(MemoryInfoPage())
      ..register(CpuInfoPage())
      ..register(DeviceInfoPanel())
      ..register(Console());
    runApp(injectUMEWidget(child: MyApp(), enable: true)); // 初始化
  } else {
    runApp(MyApp());
  }

}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  ///定义路由
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      "Fr_counterPage": Fr_counterPage(),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        'Counter':(context)=> Counter(),
        'provider_counter':(context)=> Provider_counterPage(),
        'GetX_counter':(context)=> GetX_counterPage(),
        'bloc_counter':(context)=> Bloc_counterPage(),
        'GetX_Easy_counter':(context)=> GetXEasyCounterPage(),
      },
      home: MyHomePage(),
      onGenerateRoute: (RouteSettings settings) {
        //ios页面切换风格
        return CupertinoPageRoute(builder: (BuildContext context) {
          print('生产page');
          return routes.buildPage(settings.name, settings.arguments);
        });

      },
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {


    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('分享状态管理'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildItem('Counter'),
            _buildItem('provider_counter'),
            _buildItem('GetX_counter'),
            _buildItem('GetX_Easy_counter'),
            _buildItem('bloc_counter'),
            _buildItem('Fr_counterPage'),

          ],
        ),
      ),
    );
  }

  _buildItem(String title){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(title);
      },
      child: Container(
        alignment: Alignment.center,
        color: Colors.black26,
        margin: EdgeInsets.only(top: 10,bottom: 10),
        width: 150,
        height: 50,
        child: Text(title),
      ),
    );
  }
}
