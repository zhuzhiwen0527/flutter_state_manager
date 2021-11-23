import 'package:flutter/material.dart';
import 'package:flutter_share/my_provider/inherited_provider.dart';
class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {

  const ChangeNotifierProvider({Key key,this.data,this.child}) : super(key: key);
  final T data;
  final Widget child;

  static T of<T>(BuildContext context,{bool lisen = true}){

      final provider = lisen ? context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>():context.getElementForInheritedWidgetOfExactType<InheritedProvider<T>>().widget as InheritedProvider<T>;
      return provider.data;

  }

  @override
  _ChangeNotifierProviderState<T> createState() => _ChangeNotifierProviderState<T>();

}

class _ChangeNotifierProviderState<T extends ChangeNotifier> extends State<ChangeNotifierProvider> {

  void update(){
    setState(() {

    });
  }
  @override
  void didUpdateWidget(covariant ChangeNotifierProvider<ChangeNotifier> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(oldWidget.data != widget.data){
      oldWidget.data.removeListener(update);
      widget.data.addListener(update);
    }
  }

  @override
  void initState() {
    widget.data.addListener(update);
    super.initState();
  }

  @override
  void dispose() {
     widget.data.removeListener(update);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return InheritedProvider<T>(data: widget.data,child: widget.child,);
  }

}
