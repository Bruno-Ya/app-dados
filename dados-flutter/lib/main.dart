import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: const Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: const Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  const Dadoos({super.key});

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numeroDadoDireita = 1;
  int numerodadoEsquerda = 1;

  void alterarFacesDosDados() {
    setState(() {
      numeroDadoDireita = Random().nextInt(6) + 1;
      numerodadoEsquerda = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFacesDosDados();
              },
              child: Image(
                image: AssetImage(
                  'assets/images/dado$numerodadoEsquerda.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFacesDosDados();
              },
              child: Image(
                image: AssetImage(
                  'assets/images/dado$numeroDadoDireita.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
