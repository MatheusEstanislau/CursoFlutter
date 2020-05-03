import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());


class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    if (perguntaSelecionada == 1) {
      setState(() {
        perguntaSelecionada =0;
      });
    }
    else {
      setState(() {
        perguntaSelecionada++;
      });
    }
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {

    const List<String> perguntas = [
      'Qual é a sua cor favorita ?',
      'Qual é o seu animal favorito ?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}