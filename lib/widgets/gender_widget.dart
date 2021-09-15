import 'package:flutter/material.dart';
import 'package:learn_fire_base/consts/colors.dart';
import 'package:learn_fire_base/widgets/my_text.dart';
import 'package:provider/provider.dart';
class MyGender extends StatelessWidget {
  final IconData iconData;
  final String gender;
  const MyGender({
    required this.iconData,
    required this.gender,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Kselect1Color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: KwhiteColor,
              size: 80,
            ),
            SizedBox(
              height: 10,
            ),
            MyText(text: gender),
          ],
        ),
      ),
    );
  }
}
