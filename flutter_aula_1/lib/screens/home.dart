import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aula_1/screens/Calculator.dart';
import 'package:flutter_aula_1/screens/Config.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Você está na tela de Home'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Config()),
                );
              },
              child: Text('Ir para tela de configuração'),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Calculator()),
                );
              },
              child: Text('Ir para calculadora'),
            ),
          ],
        ),
      ),
    );
  }
  
}