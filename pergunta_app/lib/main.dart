import 'package:flutter/material.dart';
import 'package:perguntaapp/questao.dart';

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
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text("Resposta 2"),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text("Resposta 3"),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}
