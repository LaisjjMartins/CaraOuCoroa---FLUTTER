import 'dart:math';
import 'package:cara_coroa/Resultado.dart';
import 'package:flutter/material.dart';



class Jogar extends StatefulWidget {
  Jogar({Key? key}) : super(key: key);

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  
  void _exibirResultado(){

  var itens = ["cara", "coroa"];
  var numero = Random().nextInt(itens.length);
  var resultado = itens[numero];

    Navigator.push(context, 
    MaterialPageRoute(
      builder: (context)=> Resultado(resultado),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/logo.png'),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset('images/botao_jogar.png')
            )
          ],
        )));
  }
}