import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  //controlar o estado do componente
  var _perguntaSelecionada = 0;

  //método responder
  void _responder() {
    // deixei também o método responder privado
    /* Passei para o setState o que será modificado na view e ele 
    vai redenderizar novamente sempre a última modificação.*/
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  //arvore de componentes
  @override
  Widget build(BuildContext context) {
    //função build
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu cachoro preferido?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          //Componente Column
          children: <Widget>[
            //Atributo Children
            Questao(perguntas.elementAt(_perguntaSelecionada)),
            Resposta('Resposta 1'),
            Resposta('Resposta 2'),
            Resposta('Resposta 3'),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState(); //estados privados
  }
}
