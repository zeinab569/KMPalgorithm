import 'package:flutter/material.dart';
import 'package:quran/helpers/commens.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  CustomText({@required this.text,this.size,this.weight,this.color});
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        fontSize: size ?? 16,
        color: color ?? black,
        fontWeight: weight ?? FontWeight.normal),
    );
  }
}
