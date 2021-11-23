import 'package:flutter/material.dart';
import 'package:flutter_share/custom_appbar/custom_app_bar.dart';
import 'package:provider/provider.dart';

import 'provider_counter_provider.dart';

class Provider_counterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Provider_counterProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<Provider_counterProvider>();

    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Provider_counterProvider>(builder: (context,vm,child){
            debugPrint('ume log test  ${vm.count}');
              return Text('${vm.count}');
            }),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: provider.updateCount,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

