import 'package:flutter/material.dart';

class Shoes_2 extends StatelessWidget {
  const Shoes_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child:
              Text('This page shows second shoe\'s data and information',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),))
        ],
      ),
    );
  }
}
