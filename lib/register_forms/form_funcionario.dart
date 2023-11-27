import 'package:flutter/material.dart';

import '../header.dart';

class TelaCadastroFuncionario extends StatelessWidget {
  final String titulo;

  TelaCadastroFuncionario({
    required this.titulo
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(child: FormCadastroFuncionario(titulo: titulo,)),
    );

  }
}

class FormCadastroFuncionario extends StatelessWidget {

  final String titulo;

  FormCadastroFuncionario({
    required this.titulo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      width: MediaQuery.sizeOf(context).width * 0.75,
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
                      LayoutBuilder(builder: (context, constraints) {
                        return Row(children: [
                          Container(
                            width: constraints.maxWidth * 0.28,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'CPF',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 10))),
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.02,
                          ),
                          Container(
                            width: constraints.maxWidth * 0.70,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Nome Completo',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 10))),
                            ),
                          ),
                        ]);
                      }),
                      const SizedBox(height: 16),
                      LayoutBuilder(builder: (ctx, constraints) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.49,
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: 'E-mail',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 10))),
                              ),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.01,
                            ),
                            Container(
                              width: ((constraints.maxWidth * 0.49) / 2) -
                                  constraints.maxWidth * 0.01,
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: 'Sexo',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 10))),
                              ),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.01,
                            ),
                            Container(
                              width: ((constraints.maxWidth * 0.49) / 2) -
                                  constraints.maxWidth * 0.01,
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
                      LayoutBuilder(builder: (ctx, constraints) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: (constraints.maxWidth / 3) -
                                  constraints.maxWidth * 0.01,
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: 'Telefone',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 10))),
                              ),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.01,
                            ),
                            Container(
                              width: (constraints.maxWidth / 3) -
                                  constraints.maxWidth * 0.01,
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: 'CEP',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 10))),
                              ),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.01,
                            ),
                            Container(
                              width: (constraints.maxWidth / 3) -
                                  constraints.maxWidth * 0.01,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Estado',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 10),
                                  ),
                                ),
                                readOnly: true,
                              ),
                            ),
                          ],
                        );
                      }),
                      const SizedBox(height: 16),
                      LayoutBuilder(builder: (ctx, constraints) {
                        return Row(children: [
                          Container(
                            width: (constraints.maxWidth / 2) -
                                constraints.maxWidth * 0.01,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Cidade',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 10))),
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.02,
                          ),
                          Container(
                            width: (constraints.maxWidth / 2) -
                                constraints.maxWidth * 0.01,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Bairro',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 10))),
                            ),
                          ),
                        ]);
                      }),
                      const SizedBox(height: 16),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return Row(
                            children: [
                              Container(
                                width: (constraints.maxWidth / 2) -
                                    constraints.maxWidth * 0.01,
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: 'Endereço',
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(width: 10))),
                                ),
                              ),
                              SizedBox(
                                width: constraints.maxWidth * 0.02,
                              ),
                              Container(
                                width: (constraints.maxWidth / 2) -
                                    constraints.maxWidth * 0.01,
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: 'Complemento',
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(width: 10))),
                                ),
                              ),
                            ],
                          );
                        },
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
