import 'package:flutter/material.dart';
import 'package:learn_fire_base/consts/colors.dart';
class CalcButton extends StatelessWidget {
  final Function function;
  CalcButton({
    required this.function,
});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () =>function(),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: KbuttonColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            )),
        child: Text(
          'CALCULATE',
          style: TextStyle(
            color: KwhiteColor,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
