// main.dart

import 'package:flutter/material.dart';

import '../header.dart';
import 'login_container.dart';
import 'sign_up_container.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 500,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xFF212124),
                  width: 1.0,
                ),
              ),
              child: Row(
                children: [
                  LoginContainer(),
                  SignUpContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
