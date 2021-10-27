import 'package:argumentos/model/screen_arguments.dart';
import 'package:flutter/material.dart';
import 'extract_arguments_screen.dart';
import 'pass_arguments_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Principal'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text("Navega para a tela que extrai argumentos"),
            onPressed: () {
              Navigator.pushNamed(
                context,
                ExtractArgumentsScreen.routeName,
                arguments: ScreenArguments(
                  'Tela de Extração de Argumentos',
                  'Esta mensagem é extraída no método build.',
                ),
              );
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
          ElevatedButton(
            child: const Text("Navega para a tela que aceita argumentos"),
            onPressed: () {
              Navigator.pushNamed(
                context,
                PassArgumentsScreen.routeName,
                arguments: ScreenArguments(
                  'Widget com Argumentos',
                  'Esta mensagem é extraída na função onGenerateRoute().',
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}
