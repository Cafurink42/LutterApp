import 'package:flutter/material.dart';

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
            Text(perguntas.elementAt(_perguntaSelecionada)),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _responder, //método responder
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
            ),
            SizedBox(
              height: 10.0,
            ),
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
