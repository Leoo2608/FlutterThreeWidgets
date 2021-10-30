import 'dart:math';

import 'package:flutter/material.dart';

class WidgetTwo extends StatefulWidget {
  const WidgetTwo({Key? key}) : super(key: key);

  @override
  _WidgetTwoState createState() => _WidgetTwoState();
}

class _WidgetTwoState extends State<WidgetTwo>{
  String nombre = 'Stateful Widget';
   final String txtBtn = 'Generate Random Number';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[500],
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(nombre, style: const TextStyle(fontSize: 18, color: Colors.white,)),
              ElevatedButton(
                child: Text(txtBtn, style: const TextStyle(fontSize: 18, color: Colors.white,)),
                onPressed: () {
                  nombre = Random().nextInt(100).toString();
                  setState(() {});
                },
              )
        ],
      )),
    );
  }

}