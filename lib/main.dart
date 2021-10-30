import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/widget_one.dart';
import 'package:flutter_widgets/widgets/widget_three.dart';
import 'package:flutter_widgets/widgets/widget_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.indigo[200],
              title: Text('Flutter Widgets Example'),
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Container(
                          height: 300,
                          child: const Center(
                            child: WidgetOne(),
                          )),
                      Container(
                          height: 300,
                          child: const Center(
                            child: WidgetTwo(),
                          )),
                      Container(
                          height: 400,
                          child: const Center(
                            child: WidgetThree(),
                          ))
                    ],
                  ),
                )
              ],
            )));
  }
}
