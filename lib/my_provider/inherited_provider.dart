import 'package:flutter/material.dart';

class InheritedProvider<T> extends InheritedWidget{

  InheritedProvider({this.data ,Widget child }):super(child: child);

  final T data;

  @override
  bool updateShouldNotify(covariant InheritedProvider oldWidget) {
    return true;
  }

}