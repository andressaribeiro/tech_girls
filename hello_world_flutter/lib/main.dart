import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _linguagemAdivinhada = "Clique no botão";
  var _listaDeLinguagens = ["Java", "Kotlin", "Dart"];

  @override
  Widget build(BuildContext context) {
    void _adivinharLinguagem() {
      setState(() {
        var _numeroSorteado = new Random().nextInt(_listaDeLinguagens.length);
        _linguagemAdivinhada = _listaDeLinguagens[_numeroSorteado];
      });
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 124),
              child: Image.asset("images/logo.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: Text(
                "Vidente DevApp",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24, bottom: 24),
              child: Text(
                "Qual é a minha linguagem favorita?",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ButtonTheme(
                minWidth: double.infinity,
                height: 52.0,
                child: RaisedButton(
                  child: Text(
                    "Adivinhar",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.black,
                  onPressed: () {
                    _adivinharLinguagem();
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text(
                _linguagemAdivinhada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
