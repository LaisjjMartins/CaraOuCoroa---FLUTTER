import 'package:flutter/material.dart';


class Resultado extends StatefulWidget {

  String valor;
  Resultado(this.valor);

  //Resultado({Key? key}) : super(key: key);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    print(widget.valor);
    var caminhoImagem;
    if( widget.valor == "cara") {
      caminhoImagem =  "images/moeda_cara.png";
    }else{
      caminhoImagem =  "images/moeda_coroa.png";
    }

    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: (){Navigator.pop(context);},  //Ele fecha a tela atual e volta p/ a outra
              child: Image.asset('images/botao_voltar.png'),
            )
          ],
        )));
  }
}