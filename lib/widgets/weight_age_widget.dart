import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({Key key, this.soz, this.ekinchiSoz, @required this.minus,@required this.plus}) : super(key: key);
  final String soz;
  final String ekinchiSoz;
  final void Function() minus;
  final void Function() plus;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          soz.toUpperCase(),
          style: const TextStyle(fontSize: 25.0),
        ),
        Text(
          ekinchiSoz,
          style: const TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff4C4F5D)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: minus,
                  child: const FaIcon(FontAwesomeIcons.minus)),
              ),
            ),
          const  SizedBox(
              width: 15.0,
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff4C4F5D)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap:  plus,
                  child:const FaIcon(FontAwesomeIcons.plus)),
              ),
            ),
          ],
        )
      ],
    );
  }
}

/// Bul jakshy praktika emes
Expanded newMethod() {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
          // color: const Color(0xff111327),
          color: Colors.green,
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          const FaIcon(
            FontAwesomeIcons.mars,
            size: 75,
          ),
          Text(
            'male'.toUpperCase(),
            style: const TextStyle(fontSize: 25.0),
          ),
        ],
      ),
    ),
  );
}
