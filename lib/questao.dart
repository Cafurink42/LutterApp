import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10), // margin 10px em todos os cantos
    );
  }
}


//criar um componente chamado resposta.dart ##ok##
//criar um componente stateles dentro do resposta.dart ##ok##
//criar um construtor que irá receber um texto que será o valor que irá colocar dentro do botão
/**
 passar o componente criado como parâmetro para esse componente:
 * ElevatedButton(
              child: Text('Resposta 1'), //mudar aqui 
              onPressed: _responder, //método responder
            ),
 */