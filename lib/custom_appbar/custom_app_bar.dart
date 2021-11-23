import 'package:flutter/material.dart';
class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{
  const CustomAppBar({Key key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(44);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: SafeArea(
        top: true,
        child: Container(
          color: Colors.red,
          // height: 44,
        ),
      ),
    );
  }
}
