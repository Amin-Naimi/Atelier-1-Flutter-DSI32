import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const RoleDiceWidget(
  ));
}

class RoleDiceWidget extends StatefulWidget {

  const RoleDiceWidget({Key? key}) : super(key: key);

  @override
  State<RoleDiceWidget> createState() => _RoleDiceWidgetState();
}

class _RoleDiceWidgetState extends State<RoleDiceWidget> {
  var indexImage = 1;
  void clickeDice() {
    setState(() {
          indexImage = Random().nextInt(6) + 1;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 162, 46, 188),
                  Color.fromARGB(255, 117, 17, 188),
                ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/dice-$indexImage.png",
                  width: 100,
                ),
                ElevatedButton.icon(
                  onPressed: clickeDice,
                  label: const Text('Lancer le dé'),
                  icon: const Icon(Icons.arrow_right),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
