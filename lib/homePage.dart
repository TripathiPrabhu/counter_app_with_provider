import 'package:counter_app_with_provider/provider/counterprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return CounterProvider();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Counter-App'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            context.read<CounterProvider>().setCount();
            //context.watch<CounterProvider>().setCount();
          },
        ),
        body: Center(
          child: Text('${context.watch<CounterProvider>().count.toString()}'),
        ),
      ),
    );
  }
}
