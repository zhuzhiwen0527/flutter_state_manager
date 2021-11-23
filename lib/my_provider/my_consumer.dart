
import 'package:flutter/material.dart';
import 'package:flutter_share/my_provider/change_notifier_provider.dart';

class MyConsumer<T> extends StatelessWidget {
  const MyConsumer({Key key,@required this.builder}) : super(key: key);

 final Widget Function(BuildContext context,T value) builder;
  @override
  Widget build(BuildContext context) {
    print('更新');
    return builder(context,ChangeNotifierProvider.of<T>(context));
  }
}
