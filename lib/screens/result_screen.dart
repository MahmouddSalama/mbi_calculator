import 'package:flutter/material.dart';
import 'package:learn_fire_base/consts/colors.dart';
import 'package:learn_fire_base/providers/my_provider.dart';
import 'package:learn_fire_base/widgets/my_text.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyProvider>(
      create: (_)=>MyProvider(),
      child: Scaffold(
        backgroundColor: KbackColor,
        appBar: AppBar(
          backgroundColor: KbackColor,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_outlined,size: 30,),

          ),
          title: Text(
            'BIM CALCULATOR',
            style: TextStyle(
              fontSize: 25,
              color: KwhiteColor,
            ),
          ),
        ),
        body: Column(
          children: [
            MyText2(text: 'Your Result'),
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height*.7,
              width: double.infinity,
              decoration: BoxDecoration(
                color: KselectColor,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'OVERWIGHT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff23D975),
                    ),
                  ),
                  Builder(
                    builder:(ctx)=> Text(
                      Provider.of<MyProvider>(ctx,listen: false).getResult().toString(),
                      style: TextStyle(
                        fontSize: 100,
                        color: KwhiteColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Text('You have a height than normal body weight. Try to exercise more.',
                  style: TextStyle(
                    fontSize: 22,
                    color: KwhiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                    textAlign:TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
