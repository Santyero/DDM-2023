
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

returnToMain(context) {
  Navigator.pop(context);
}


class Config extends StatelessWidget {
  const Config({super.key});
  
  @override
  Widget build(BuildContext context) {
    String name ='';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Config'),
      ),
      body:Column(children: [
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome:',
            ),
            onChanged: (String value) {
              name = value;
            },
          ),
          Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context, 
                    builder: (
                      (context){
                        return AlertDialog(
                          title: Text(name),
                          content: Text("Você está na tela de configuração"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                  Navigator.pop(context);
                                  returnToMain(context);
                              }, 
                              child: Text('OK')
                            )
                          ],
                        );
                      }
                    )
                  );
                },
              child: const Text('Go back!'),
            ),
          ),
        ],)
    );
  }
  
}