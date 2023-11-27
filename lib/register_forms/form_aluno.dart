import 'package:flutter/material.dart';

import '../header.dart';


class TelaCadastroAlunos extends StatelessWidget {
  final String titulo;

  TelaCadastroAlunos({
    required this.titulo
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(child: FormCadastroAluno(titulo: titulo,)),
    );

  }
}


class FormCadastroAluno extends StatelessWidget {
  final String titulo;

  FormCadastroAluno({
    required this.titulo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      width: MediaQuery.sizeOf(context).width * 0.5,
      height: 500,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 15,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  titulo,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Card(
                elevation: 0,
                color: null,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'CPF',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 10))),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Nome Completo',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 10))),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'E-mail',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 10))),
                        ),
                      ),
                      const SizedBox(height: 16),
                      LayoutBuilder(builder: (ctx, constraints) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.49,
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: 'Sexo',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 10))),
                              ),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.02,
                            ),
                            Container(
                              width: constraints.maxWidth * 0.49,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Data de Nascimento',
                                  suffixIcon: Icon(Icons.calendar_today),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                      const SizedBox(height: 16),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Telefone',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 10))),
                        ),
                      ),
                      const SizedBox(height: 16),
                      LayoutBuilder(builder: (context, constraints) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: constraints.maxWidth * 0.25,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return Colors.amber;
                                    } else {
                                      return Colors.orange;
                                    }
                                  }),
                                ),
                                child: FittedBox(
                                  child: Text("Salvar"),
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}