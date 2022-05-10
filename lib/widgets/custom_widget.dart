import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({this.widget});

  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xff111327),
            borderRadius: BorderRadius.circular(15.0)),
        child: widget,
      ),
    );
  }
}
