import 'package:aula_flutter/pages/layout_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "aula_flutter",
      home: Layout01Page(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton.icon(
          icon: const Icon(Icons.send_outlined),
          label: const Text("Vasco da gama"),
          onPressed: () {
            onPressedHandler(context);
          },
        ),
      ),
    );
  }

  onPressedHandler(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Vascão"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _showToast(context, "Vascão selecionado");
                },
                child: const Text("Gigante da colina"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _showToast(context, "Série B selecionada");
                },
                child: const Text("Série B"),
              )
            ],
          );
        });
  }

  void _showToast(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);

    scaffold.showSnackBar(SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'Fechar',
        onPressed: scaffold.hideCurrentSnackBar,
      ),
    ));
  }
}
