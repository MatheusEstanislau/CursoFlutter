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
      "resposta": ['Preto', 'Vermelho', 'Amarelo', 'Verde']
    },
    {
      "pergunta": "Qual seu animal favorito?",
      "resposta": ['Cachorro', 'Gato', 'Leão', 'Raposa']
    },
    {
      "pergunta": "Qual seu instrutor favorito?",
      "resposta": ['Diego', 'Max', 'Leo', 'Matheus']
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
