import 'package:flutter/material.dart';

class WidgetOne extends StatelessWidget {
  final String nombre = 'Stateless Widget';
  final String txtBtn = 'Press me';
  const WidgetOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[600],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(nombre,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
          ),
          
          Image.asset(
            'assets/parachutes.jpg',
            scale: 6,
          )
        ],
      )),
    );
  }
}
