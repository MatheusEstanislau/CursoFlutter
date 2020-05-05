import 'package:flutter/material.dart';
import 'package:perguntaapp/questao.dart';
import 'package:perguntaapp/resposta.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaselecionada = 0;
  void _responder() {
    setState(() {
      _perguntaselecionada++;
    });
    print(_perguntaselecionada);
  }

  final List<String> perguntas = [
    'Qual sua cor favorita ?',
    'Qual seu animal favorito?'
  ];

  final List<String> resposta = [
    'resposta 1',
    'resposta 2',
    'resposta 3'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas.elementAt(_perguntaselecionada)),
            Resposta(resposta.elementAt(0), _responder),
            Resposta(resposta.elementAt(1), _responder),
            Resposta(resposta.elementAt(2), _responder),
          ],
        ),
      ),
    );
  }
}
