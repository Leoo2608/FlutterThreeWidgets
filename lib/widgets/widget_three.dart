import 'package:flutter/material.dart';

class WidgetThree extends StatefulWidget {
  const WidgetThree({Key? key}) : super(key: key);
  @override
  _WidgetThreeState createState() => _WidgetThreeState();
}

class _WidgetThreeState extends State<WidgetThree> {
  List<String> item = [];
  String temp = '';
  String nombre = 'List of Colors';
  final String txtBtn = 'Add color';
  final String txtBtn2 = 'Clean List';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(nombre,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Container(
              height: 150,
              color: Colors.indigo[300],
              child: ListView(
                shrinkWrap: true,
                children: item.map((e) => Text(e)).toList(),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(90, 10, 90, 10),
              child: Column(
                children: [
                  TextField(
                    onChanged: (str) {
                      temp = str;
                    },
                    decoration: InputDecoration(
                        hintText: "Type a color :)",
                        hintStyle: TextStyle(
                          color: Colors.indigo[100],
                        ),
                        labelText: "Color",
                        labelStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        )),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Text(txtBtn,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    setState(() {
                      item.add(temp);
                    });
                  },
                ),
                ElevatedButton(
                  child: Text(txtBtn2,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  onPressed: () {
                    setState(() {
                      item.clear();
                    });
                  },
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
