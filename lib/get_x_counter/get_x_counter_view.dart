import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'get_x_counter_logic.dart';
import 'get_x_counter_state.dart';

class GetXCounterPage extends StatefulWidget {
  @override
  _GetXCounterPageState createState() => _GetXCounterPageState();
}

class _GetXCounterPageState extends State<GetXCounterPage> {

  final GetXCounterLogic logic = Get.put(GetXCounterLogic());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('GetX 状态管理'),
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
            Obx(()=> Text(
              '${logic.state.count.value}',
              style: Theme.of(context).textTheme.headline4,
            ),)

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

  @override
  void dispose() {
    Get.delete<GetXCounterLogic>();
    super.dispose();
  }
}