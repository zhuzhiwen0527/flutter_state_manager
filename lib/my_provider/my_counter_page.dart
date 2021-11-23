import 'package:flutter/material.dart';
import 'package:flutter_share/my_provider/change_notifier_provider.dart';
import 'package:flutter_share/my_provider/itme_model.dart';
import 'package:flutter_share/my_provider/my_consumer.dart';
class MyCounterPage extends StatefulWidget {
  const MyCounterPage({Key key}) : super(key: key);

  @override
  _MyCounterPageState createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //
          title: Text('自定义 provider 状态管理'),
        ),
        body:Center(
            child:ChangeNotifierProvider<ItemModel>(
              data: ItemModel(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyConsumer<ItemModel>(
                    builder: (context,value){
                      return Text('${value.count}');
                    },
                  ),
                  SizedBox(height: 10,),
                  Builder(builder: (context){
                    final itme = ChangeNotifierProvider.of<ItemModel>(context,lisen: false);
                    return TextButton(onPressed: (){
                      itme.add();
                    }, child: Text('点击增加'));
                  }),
                ],
              )
            )
        ),
    );
  }
}
