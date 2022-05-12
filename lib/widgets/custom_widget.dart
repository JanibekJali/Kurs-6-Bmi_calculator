import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({this.widget, this.color, this.onTap});

  final Widget widget;
  final Color color;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(15.0)),
          child: widget,
        ),
      ),
    );
  }
}
