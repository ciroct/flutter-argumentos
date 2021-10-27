import 'package:flutter/material.dart';
import 'model/screen_arguments.dart';
import 'screen/home_screen.dart';
import 'screen/extract_arguments_screen.dart';
import 'screen/pass_arguments_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação com Argumentos',
      home: const HomeScreen(),
      routes: {
        ExtractArgumentsScreen.routeName: (context) =>
            const ExtractArgumentsScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == PassArgumentsScreen.routeName) {
          final ScreenArguments args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        assert(false, 'Precisa ser implementada ${settings.name}');
        return null;
      },
    );
  }
}
