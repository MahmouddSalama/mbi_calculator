import 'package:flutter/material.dart';
import 'package:learn_fire_base/consts/colors.dart';

class MyText extends StatelessWidget {
  final String text;

  const MyText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 22, color: KtextColor),
    );
  }
}
class MyText2 extends StatelessWidget {
  final String text;

  const MyText2({required this.text}) ;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: 50,
      color: KwhiteColor,
      fontWeight: FontWeight.w900,
    ),);
  }
}
