import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'fr_counter_action.dart';
import 'package:flutter_share/fr_counter/fr_counter_state.dart';
/*
* state：这个就是我们的数据层，页面需要的变量都写在state层
* dispatch：类似调度器，调用action层中的方法，从而去回调effect，reducer层的方法
* viewService：这个参数，我们可以使用其中的方法：buildComponent("组件名")，调用我们封装的相关组件
*/

Widget buildView(Fr_counterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text('fish_redux 状态管理'),
    ),
    body: Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '${state.count}',
          ),
          TextButton(onPressed: (){
            Navigator.of(viewService.context).pushNamed('Fr_counterPage');
          }, child: Text('再次跳转'))
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        dispatch(Fr_counterActionCreator.onAction());
      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ), // This trailing comma makes auto-formatting nicer for build methods.
  );;
}
