import 'package:flutter/material.dart';
import 'package:learn_fire_base/providers/my_provider.dart';
import 'package:provider/provider.dart';

import 'screens/home_scrren.dart';
main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<MyProvider>(
          create: (context)=>MyProvider(),
          child: HomeScreen()),
    );
  }
}
