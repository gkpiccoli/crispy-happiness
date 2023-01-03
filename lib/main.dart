import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Home Page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_task_rounded)),
          title: const Text('Flutter: Desenhando na tela'),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.blue,
              child: const Text('Agua'),
            ),
            Container(
              color: Colors.green,
              child: const Text('Gelo'),
            ),
            Container(
              color: Colors.red,
              child: const Text('Vapor'),
            ),
          ],
        ),
      ),
    );
  }
}

class BlocosColoridos extends StatelessWidget {
  const BlocosColoridos(
      {super.key, required this.cor1, required this.cor2, required this.cor3});

  final Color cor1;
  final Color cor2;
  final Color cor3;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
