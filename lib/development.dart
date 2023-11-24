import 'package:flutter/material.dart';
import 'package:performance_gym_web/header.dart';
import 'package:performance_gym_web/home.dart';

class development extends StatelessWidget {
  const development({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Header(),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: const Center(
              child: Text(
            "EM DESENVOLVIMENTO!!!",
            style: TextStyle(
                color: Colors.black38, decoration: TextDecoration.none),
          )),
        ),
      ],
    );
  }
}
