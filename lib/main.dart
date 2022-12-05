
import 'package:counter_app_with_provider/provider/counterprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'homePage.dart';

void main()=>
runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return CounterProvider();
      },
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
