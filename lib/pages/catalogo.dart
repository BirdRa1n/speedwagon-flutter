import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(Catalogo());
}

class Catalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: TextoCarlos(),
        ),
      ),
    );
  }
}

class TextoCarlos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Parte do Carlos',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
