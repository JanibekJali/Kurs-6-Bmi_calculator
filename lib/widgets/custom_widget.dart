import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key key, this.icons, this.text}) : super(key: key);
  final IconData icons;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            // color: const Color(0xff111327),
            color: Colors.green,
            borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            FaIcon(
              icons,
              size: 75,
            ),
            Text(
              text.toUpperCase(),
              style: const TextStyle(fontSize: 25.0),
            ),
          ],
        ),
      ),
    );
  }
}
