import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  //controlar o estado do componente
  var perguntaSelecionada = 0;

  //método responder
  void responder() {
    /* Passei para o setState o que será modificado na view e ele 
    vai redenderizar novamente sempre a última modificação.*/
    setState(() {
      perguntaSelecionada++;
    });

    print(perguntaSelecionada);
  }

  //arvore de componentes
  @override
  Widget build(BuildContext context) {
    //função build
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
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
            Text(perguntas.elementAt(perguntaSelecionada)),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder, //método responder
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
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
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
