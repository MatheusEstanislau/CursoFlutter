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
  @override
  Widget build(BuildContext context) {

  final perguntas = [
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

  List<Widget> answers = [];
  
  for(var answersText in perguntas[_perguntaselecionada]["resposta"]){
    answers.add(Resposta(answersText, _responder));
  }
  

  
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaselecionada]["pergunta"]),
            ...answers,
          ],
        ),
      ),
    );
  }
}
