import 'package:flutter/material.dart';
import 'package:perguntaapp/questionario.dart';
import 'package:perguntaapp/resultado.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaselecionada = 0;

  final _perguntas = const [
    {
      "pergunta": "Qual sua cor favorita?",
      "resposta": [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Amarelo', 'nota': 3},
        {'texto': 'Verde', 'nota': 1},
      ]
    },
    {
      "pergunta": "Qual seu animal favorito?",
      "resposta": [
        {'texto': 'Cachorro', 'nota': 10},
        {'texto': 'Gato', 'nota': 5},
        {'texto': 'Leão', 'nota': 3},
        {'texto': 'Raposa', 'nota': 1},
      ]
    },
    {
      "pergunta": "Qual seu instrutor favorito?",
      "resposta": [
        {'texto': 'Diego', 'nota': 10},
        {'texto': 'Max', 'nota': 5},
        {'texto': 'Leo', 'nota': 3},
        {'texto': 'Matheus', 'nota': 1},
      ]
    }
  ];
  void _responder() {
    setState(() {
      _perguntaselecionada++;
    });
    print(_perguntaselecionada);
  }

  bool get questionExists {
    return _perguntaselecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: questionExists
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaselecionada,
                  responder: _responder,
                )
              : Resultado('Parabéns!!')),
    );
  }
}
