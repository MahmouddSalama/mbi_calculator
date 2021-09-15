import 'package:flutter/material.dart';
import 'package:learn_fire_base/consts/colors.dart';

import 'my_text.dart';

class WA extends StatelessWidget {
  final String text;
  final int value;
  final Function function1;
  final Function function2;

  const WA({
    required this.text,
    required this.value,
    required this.function1,
    required this.function2,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: KselectColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(text: text),
            MyText2(text: '${value}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: ()=>function1(),
                  backgroundColor: KfloatColor,
                  child: MyText2(text: '-'),
                ),
                FloatingActionButton(
                  onPressed: ()=>function2(),
                  backgroundColor: KfloatColor,
                  child: MyText2(text: '+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
