import 'package:flutter/material.dart';
import 'package:performance_gym_web/development.dart';
import 'package:performance_gym_web/functionary_table/funcionarios_table.dart';

import 'header.dart';
import 'student_table/alunos_table.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 8,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 500,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nome: xxxxxxxx'),
                              Text('Matrícula: xxxxxxxxx'),
                            ],
                          ),
                          Image.asset('assets/images/exemplo_logo.png'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Navegar para a tela desejada
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TelaAlunos(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              fixedSize: Size(180, 180),
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 140,
                              child: Image.asset(
                                'assets/images/icone_alunos.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Navegar para a tela desejada
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => development(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              fixedSize: Size(180, 180),
                            ),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.asset(
                                'assets/images/icone_financeiro.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Navegar para a tela desejada
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TelaFuncionario(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              fixedSize: Size(180, 180),
                            ),
                            child: SizedBox(
                              width: 100,
                              height: 135,
                              child: Image.asset(
                                'assets/images/icone_funcionarios.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
