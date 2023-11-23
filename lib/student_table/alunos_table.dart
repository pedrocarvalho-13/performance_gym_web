import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../header.dart';
import 'student_list.dart';

class TelaAlunos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Card(
                elevation: 5,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Alunos',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    // Ação para adicionar aluno
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFFF5722),
                                    onPrimary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side:
                                          BorderSide(color: Color(0xFFFF5722)),
                                    ),
                                  ),
                                  child: Text('Adicionar aluno'),
                                ),
                                SizedBox(width: 8),
                                OutlinedButton(
                                  onPressed: () {
                                    // Ação para editar aluno
                                  },
                                  style: OutlinedButton.styleFrom(
                                    primary: Color(0xFFFF5722),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                  child: Text('Editar aluno'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      TabelaTitulo(),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          child:
                              TabelaAlunos(listaDadosAlunos: listaDadosAlunos)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Card(
              elevation: 2,
              child: Container(
                width: 100,
                height: 500,
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset(
                          'assets/images/exemploLogo.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset(
                          'assets/images/iconeAlunos.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset(
                          "assets/images/iconeFinanceiro.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset(
                          "assets/images/iconeFuncionario.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
