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
                  'Função',
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

class LinhaTabelaFuncionario extends StatelessWidget {
  final String _nome;
  final int _id;
  final String _funcao;
  final String _idade;

  LinhaTabelaFuncionario(this._nome, this._id, this._funcao, this._idade);

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
                  _funcao,
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

final listaDadosFuncionario = [
  {'nome': 'Pedro', 'id': 44458, 'funcao': 'Personal', 'idade': '38'},
  {'nome': 'Carlos', 'id': 64153, 'funcao': 'Recepção', 'idade': '19'},
  {'nome': 'Pedro', 'id': 52677, 'funcao': 'Recepção', 'idade': '28'},
  {'nome': 'Fernanda', 'id': 12754, 'funcao': 'Recepção', 'idade': '35'},
  {'nome': 'Fernanda', 'id': 90535, 'funcao': 'Personal', 'idade': '23'},
  {'nome': 'Maria', 'id': 50426, 'funcao': 'Serviços Gerais', 'idade': '18'},
  {'nome': 'Carlos', 'id': 86807, 'funcao': 'Recepção', 'idade': '36'},
  {'nome': 'Carlos', 'id': 67973, 'funcao': 'Recepção', 'idade': '24'},
  {'nome': 'José', 'id': 74931, 'funcao': 'Personal', 'idade': '33'},
  {'nome': 'Letícia', 'id': 24422, 'funcao': 'Personal', 'idade': '22'},
  {'nome': 'Maria', 'id': 51803, 'funcao': 'Recepção', 'idade': '29'},
  {'nome': 'Fernanda', 'id': 18888, 'funcao': 'Personal', 'idade': '28'},
  {'nome': 'Pedro', 'id': 56673, 'funcao': 'Recepção', 'idade': '35'},
  {'nome': 'José', 'id': 11209, 'funcao': 'Serviços Gerais', 'idade': '38'},
  {'nome': 'Ana', 'id': 60008, 'funcao': 'Serviços Gerais', 'idade': '32'},
  {'nome': 'Ana', 'id': 69287, 'funcao': 'Personal', 'idade': '22'},
  {'nome': 'João', 'id': 49526, 'funcao': 'Serviços Gerais', 'idade': '21'},
  {'nome': 'Pedro', 'id': 23095, 'funcao': 'Personal', 'idade': '28'},
  {'nome': 'Maria', 'id': 69746, 'funcao': 'Serviços Gerais', 'idade': '30'},
  {'nome': 'Pedro', 'id': 52087, 'funcao': 'Serviços Gerais', 'idade': '40'},
  {'nome': 'Carlos', 'id': 75019, 'funcao': 'Recepção', 'idade': '22'},
  {'nome': 'José', 'id': 50034, 'funcao': 'Recepção', 'idade': '19'},
  {'nome': 'Maria', 'id': 82138, 'funcao': 'Serviços Gerais', 'idade': '39'},
  {'nome': 'Fernanda', 'id': 44791, 'funcao': 'Personal', 'idade': '29'},
  {'nome': 'Fernanda', 'id': 44895, 'funcao': 'Serviços Gerais', 'idade': '39'},
  {'nome': 'José', 'id': 55412, 'funcao': 'Serviços Gerais', 'idade': '26'},
  {'nome': 'Pedro', 'id': 97845, 'funcao': 'Recepção', 'idade': '36'},
  {'nome': 'Letícia', 'id': 53781, 'funcao': 'Recepção', 'idade': '23'},
  {'nome': 'Pedro', 'id': 91110, 'funcao': 'Gold', 'idade': '28'},
  {'nome': 'Maria', 'id': 92661, 'funcao': 'Recepção', 'idade': '25'},
];

class TabelaFuncionario extends StatelessWidget {
  final List<Map<String, Object>> listaDadosAlunos;

  TabelaFuncionario({
    required this.listaDadosAlunos,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> tabelaAlunos = listaDadosAlunos.cast();
    return SingleChildScrollView(
      child: Column(
        children: [
          ...tabelaAlunos
              .map((alunoLinha) => LinhaTabelaFuncionario(
                    alunoLinha['nome'] as String,
                    alunoLinha['id'] as int,
                    alunoLinha['funcao'] as String,
                    alunoLinha['idade'] as String,
                  ))
              .toList(),
        ],
      ),
    );
  }
}
