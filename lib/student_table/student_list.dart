import 'package:flutter/material.dart';

final gapBoxBottom = 16.0;
final gapBoxTop = 16.0;

class TabelaTitulo extends StatelessWidget {
  const TabelaTitulo({super.key});
  final sizeTextTitle = 14.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: gapBoxBottom, top: gapBoxTop),
        width: MediaQuery.of(context).size.width * 0.64,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(64, 0, 0, 0),
              blurRadius: 4,
            )
          ],
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            children: [
              SizedBox(
                width: constraints.maxWidth * 0.49,
                child: Text(
                  'Nome',
                  style: TextStyle(
                    fontSize: sizeTextTitle,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: constraints.maxWidth * 0.01),
              SizedBox(
                width: (constraints.maxWidth * 0.20),
                child: Text(
                  'Matrícula',
                  style: TextStyle(
                    fontSize: sizeTextTitle,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: constraints.maxWidth * 0.01),
              SizedBox(
                width: (constraints.maxWidth * 0.16),
                child: Text(
                  'Plano',
                  style: TextStyle(
                    fontSize: sizeTextTitle,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: constraints.maxWidth * 0.01),
              SizedBox(
                width: (constraints.maxWidth * 0.12),
                child: Text(
                  'Idade',
                  style: TextStyle(
                    fontSize: sizeTextTitle,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class LinhaTabelaAluno extends StatelessWidget {
  final String _nome;
  final int _id;
  final String _plano;
  final String _idade;

  LinhaTabelaAluno(this._nome, this._id, this._plano, this._idade);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: gapBoxBottom),
        width: MediaQuery.of(context).size.width * 0.64,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(64, 0, 0, 0),
              blurRadius: 4,
            )
          ],
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            children: [
              SizedBox(
                width: constraints.maxWidth * 0.49,
                child: Text(
                  _nome,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              SizedBox(width: constraints.maxWidth * 0.01),
              SizedBox(
                width: (constraints.maxWidth * 0.20),
                child: Text(
                  _id.toString(),
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: constraints.maxWidth * 0.01),
              SizedBox(
                width: (constraints.maxWidth * 0.16),
                child: Text(
                  _plano,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: constraints.maxWidth * 0.01),
              SizedBox(
                width: (constraints.maxWidth * 0.12),
                child: Text(
                  _idade,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

final listaDadosAlunos = [
  {'nome': 'Pedro', 'id': 44458, 'plano': 'Gold', 'idade': '38'},
  {'nome': 'Carlos', 'id': 64153, 'plano': 'Silver', 'idade': '19'},
  {'nome': 'Pedro', 'id': 52677, 'plano': 'Silver', 'idade': '28'},
  {'nome': 'Fernanda', 'id': 12754, 'plano': 'Silver', 'idade': '35'},
  {'nome': 'Fernanda', 'id': 90535, 'plano': 'Gold', 'idade': '23'},
  {'nome': 'Maria', 'id': 50426, 'plano': 'Black', 'idade': '18'},
  {'nome': 'Carlos', 'id': 86807, 'plano': 'Silver', 'idade': '36'},
  {'nome': 'Carlos', 'id': 67973, 'plano': 'Silver', 'idade': '24'},
  {'nome': 'José', 'id': 74931, 'plano': 'Gold', 'idade': '33'},
  {'nome': 'Letícia', 'id': 24422, 'plano': 'Gold', 'idade': '22'},
  {'nome': 'Maria', 'id': 51803, 'plano': 'Silver', 'idade': '29'},
  {'nome': 'Fernanda', 'id': 18888, 'plano': 'Gold', 'idade': '28'},
  {'nome': 'Pedro', 'id': 56673, 'plano': 'Silver', 'idade': '35'},
  {'nome': 'José', 'id': 11209, 'plano': 'Black', 'idade': '38'},
  {'nome': 'Ana', 'id': 60008, 'plano': 'Black', 'idade': '32'},
  {'nome': 'Ana', 'id': 69287, 'plano': 'Gold', 'idade': '22'},
  {'nome': 'João', 'id': 49526, 'plano': 'Black', 'idade': '21'},
  {'nome': 'Pedro', 'id': 23095, 'plano': 'Gold', 'idade': '28'},
  {'nome': 'Maria', 'id': 69746, 'plano': 'Black', 'idade': '30'},
  {'nome': 'Pedro', 'id': 52087, 'plano': 'Black', 'idade': '40'},
  {'nome': 'Carlos', 'id': 75019, 'plano': 'Silver', 'idade': '22'},
  {'nome': 'José', 'id': 50034, 'plano': 'Silver', 'idade': '19'},
  {'nome': 'Maria', 'id': 82138, 'plano': 'Black', 'idade': '39'},
  {'nome': 'Fernanda', 'id': 44791, 'plano': 'Gold', 'idade': '29'},
  {'nome': 'Fernanda', 'id': 44895, 'plano': 'Black', 'idade': '39'},
  {'nome': 'José', 'id': 55412, 'plano': 'Black', 'idade': '26'},
  {'nome': 'Pedro', 'id': 97845, 'plano': 'Silver', 'idade': '36'},
  {'nome': 'Letícia', 'id': 53781, 'plano': 'Silver', 'idade': '23'},
  {'nome': 'Pedro', 'id': 91110, 'plano': 'Gold', 'idade': '28'},
  {'nome': 'Maria', 'id': 92661, 'plano': 'Silver', 'idade': '25'},
];

class TabelaAlunos extends StatelessWidget {
  final List<Map<String, Object>> listaDadosAlunos;

  TabelaAlunos({
    required this.listaDadosAlunos,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> tabelaAlunos = listaDadosAlunos.cast();
    return SingleChildScrollView(
      child: Column(
        children: [
          ...tabelaAlunos
              .map((alunoLinha) => LinhaTabelaAluno(
                    alunoLinha['nome'] as String,
                    alunoLinha['id'] as int,
                    alunoLinha['plano'] as String,
                    alunoLinha['idade'] as String,
                  ))
              .toList(),
        ],
      ),
    );
  }
}
