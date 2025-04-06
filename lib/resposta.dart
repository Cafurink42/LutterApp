import 'package:flutter/material.dart';
import './main.dart';

class Resposta extends StatelessWidget {
  final String texto;
  Resposta(this.texto); //construtor

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(texto),
      onPressed: null,
    );
  }
}
