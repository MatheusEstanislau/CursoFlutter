import 'package:flutter/material.dart';

import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.responder,
  });

  bool get questionExists {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas =
        questionExists ? perguntas[perguntaSelecionada]["resposta"] : null;

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]["pergunta"]),
        ...respostas.map((r) => Resposta(r, responder)).toList(),
      ],
    );
  }
}
