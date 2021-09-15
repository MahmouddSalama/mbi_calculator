import 'package:flutter/material.dart';
import 'package:learn_fire_base/consts/colors.dart';
import 'package:learn_fire_base/providers/my_provider.dart';
import 'package:learn_fire_base/widgets/my_text.dart';
import 'package:provider/provider.dart';
class Height extends StatelessWidget {
  double value=60;
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<MyProvider>(
      create: (_)=>MyProvider(),
      child: Container(
        decoration: BoxDecoration(
          color: KselectColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 20),
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: Column(
          children: [
            MyText(text: 'HEIGHT'),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                MyText2(text: Provider.of<MyProvider>(context).getHeight().toString()),
                Text(
                  ' CM',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: KtextColor),
                ),
              ],
            ),
            Slider(
              value: Provider.of<MyProvider>(context,listen: true).getHeight(),
              onChanged: (val){
                Provider.of<MyProvider>(context,listen: false).setHeight(val);
              },
              max: 220,
              min: 50,
              activeColor: KbuttonColor,
              inactiveColor: KtextColor,
            ),
          ],
        ),
      ),
    );
  }
}
