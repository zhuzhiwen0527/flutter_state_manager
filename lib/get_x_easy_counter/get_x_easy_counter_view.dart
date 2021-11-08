import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'get_x_easy_counter_logic.dart';

class GetXEasyCounterPage extends StatelessWidget {

  final GetXEasyCounterLogic logic = GetXEasyCounterLogic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('GetX 简单状态管理'),
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
            GetBuilder<GetXEasyCounterLogic>(
              init: logic,
                builder: (_)=>Text(
              '${logic.count}', style: Theme.of(context).textTheme.headline4,))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: logic.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
