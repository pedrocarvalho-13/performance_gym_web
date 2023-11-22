import 'package:flutter/material.dart';

import 'login_register/index_login_register.dart';
import 'student_table/alunos_table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaAlunos(),
    );
  }
}