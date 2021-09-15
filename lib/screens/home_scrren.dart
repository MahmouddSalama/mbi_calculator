import 'package:flutter/material.dart';
import 'package:learn_fire_base/screens/result_screen.dart';
import '/consts/colors.dart';
import '/providers/my_provider.dart';
import '/widgets/calculate_button.dart';
import '/widgets/gender_widget.dart';
import '/widgets/height_widget.dart';
import '/widgets/wa_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyProvider>(
      create: (_) => MyProvider(),
      child: Scaffold(
        backgroundColor: KbackColor,
        appBar: AppBar(
          backgroundColor: KbackColor,
          elevation: 0,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'BIM CALCULATOR',
              style: TextStyle(
                fontSize: 25,
                color: KwhiteColor,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyGender(
                    iconData: Icons.male,
                    gender: 'MALE',
                  ),
                  MyGender(
                    iconData: Icons.female,
                    gender: 'FEMALE',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Height(),
            ),
            Expanded(
                child: Row(
              children: [
                WA(
                  text: 'WEIGHT',
                  value: Provider.of<MyProvider>(context, listen: true)
                      .getWeight(),
                  function1: () {
                    Provider.of<MyProvider>(context, listen: false)
                        .decresWeight();
                  },
                  function2: () {
                    Provider.of<MyProvider>(context, listen: false)
                        .incresWeight();
                  },
                ),
                WA(
                  text: 'AGE',
                  value:
                      Provider.of<MyProvider>(context, listen: true).getAge(),
                  function1: () {
                    Provider.of<MyProvider>(context, listen: false).decresAge();
                  },
                  function2: () {
                    Provider.of<MyProvider>(context, listen: false).incresAge();
                  },
                )
              ],
            )),
            CalcButton(function: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(),
                  ));
            }),
          ],
        ),
      ),
    );
  }
}
