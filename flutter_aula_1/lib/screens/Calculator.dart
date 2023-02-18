import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => FormCalculator();
}

class FormCalculator extends  State<Calculator> {
  int _value1 = 0;
  int _value2 = 0;
  int _result = 0;
  final controller = TextEditingController();

  void setValue1(String value) {
    setState(() {
      _value1 = int.parse(value);
    });
  }

  void setValue2(String value) {
    setState(() {
      _value2 = int.parse(value);
    });
  }

  void calculate(type) {
    switch (type) {
      case 'sum':
        setState(() {
          _result = _value1 + _value2;
        });
        break;
      case 'sub':
        setState(() {
          _result = _value1 - _value2;
        });
        break;
      case 'mult':
        setState(() {
          _result = _value1 * _value2;
        });
        break;
      case 'div':
        setState(() {
          _result = _value1 ~/ _value2;
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor 1:',
              ),
              onChanged: setValue1,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor 2:',
              ),
              onChanged: setValue2,
            ),
            ElevatedButton(
              onPressed: () {
                calculate('sum');
              },
              child: Text('Somar'),
            ),
            ElevatedButton(
              onPressed: () {
                calculate('sub');
              },
              child: Text('Subtrair'),
            ),
            Text('Resultado: $_result'),
          ],
        ),
      ),
    );
  }
}